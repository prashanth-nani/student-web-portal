<?php
  require("checksession.php");
  if(in_session()){
    header("location:profile.php");
    die();
  }
?>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/register.css" media="screen" title="no title" charset="utf-8">
    <title>Registration</title>
  </head>

  <body>
    <div class="bodyout">
      <div class="title">
        <div class="wrapper">
          <div id="uname">
            <div id="titlebox">
              <h1 id="title">Hogwarts University</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="regform">
        <div class="formtitle">
          <h1>Register!<h1>
        </div>

        <form action="register.php" method="post" enctype="multipart/form-data">
          <input type="text" name="name" placeholder="Full Name" required/>
          <br>
          <input type="email" name="email" placeholder="Email" required>
          <br>
          <label class="formlabel">Degree:</label>
          <select name="degree" required>
          <?php
              require('dbconnect.php');
              $degquery = 'SELECT degree, dname FROM degree';
              $degresult = mysqli_query($con, $degquery);
              while($degree = mysqli_fetch_array($degresult)){
                echo '<option value="'.$degree['degree'].'">'.$degree['dname'].'</option>';
              }
          ?>
          </select>
          <br>
          <label class="formlabel">Branch:</label>
          <select name="branch" required>
            <?php
              $brquery = 'SELECT dcode, dname FROM department';
              $brresult = mysqli_query($con, $brquery);
              while($branch = mysqli_fetch_array($brresult)){
                echo '<option value="'.$branch['dcode'].'">'.$branch['dname'].'</option>'."\n";
              }
            ?>
          </select>
          <!-- <br> -->
          <label class="formlabel">Date of Birth:</label>
          <input type="date" name="dob" required/>
          <!-- <br> -->
          <label class="formlabel">Gender:</label>
          <!-- <div class="radio"> -->
          <input type="radio" name="gender" value="m" class="formspan" required checked="checked" />
          <label class="genderlabel">Male</label>
        <!-- </div> -->
          <!-- <div class="radio"> -->
          <input type="radio" name="gender" value="f" class="formspan" required/>
          <label class="genderlabel">Female</label>
        <!-- </div> -->
          <!-- <br> -->
          <input type="password" name="password" placeholder="Enter a password" id="passwd" onkeyup="checkpasswd()" required/>
          <!-- <br> -->
          <input type="password" name="password2" placeholder="Retype password" id="repasswd" onkeyup="checkpasswd()" required/>
          <div id="errormsg">Passwords do not match!</div>
          <!-- <br> -->
          <!-- <input type="file" name="image" id="image"><br> -->
          <input type="submit" name="register" value="Register!" id="registerbutton">
          <div id="loginpage"><a href="login.php"><i>Already registered?</i></a></div>
        </form>
      </div>
    </div>
  </body>

  <script type="text/javascript">
    function checkpasswd(){
        $passwd = document.getElementById('passwd').value;
        $repasswd = document.getElementById('repasswd').value;
        if($passwd != $repasswd){
          document.getElementById('errormsg').style.visibility="visible";
        }
        else {
          document.getElementById('errormsg').style.visibility="hidden";
        }
    }
  </script>

  </html>
  <?php
    $required = array('name', 'email', 'degree', 'dob', 'gender', 'password', 'password2');
    $error = false;

    foreach($required as $field){
      if(!isset($_POST[$field]) || empty($_POST[$field])){
        $error = true;
        break;
      }
    }

  if(isset($_POST['password']) && !empty($_POST['password']) && isset($_POST['password2']) && !empty($_POST['password2'])){
    if($_POST['password'] != $_POST['password2']){
      $error = true;
    }
  }

    if(!$error){
      require('dbconnect.php');
      $name = htmlentities(trim($_POST['name']));
      $email = htmlentities(trim($_POST['email']));
      $degree = htmlentities(trim($_POST['degree']));
      $dob = htmlentities(trim($_POST['dob']));
      $gender = htmlentities(trim($_POST['gender']));
      $password = htmlentities(trim($_POST['password']));
      $branch = htmlentities(trim($_POST['branch']));
      $encpassword = md5($password);

      //Generating registration number
      $snoquery = "SELECT count(*) as sno FROM student WHERE branch='$branch'";
      $snoresult = mysqli_query($con, $snoquery);
      if( mysqli_num_rows($snoresult)==1){
        $year = date("Y", time());
        $snorow = mysqli_fetch_array($snoresult);
        $sno = $snorow['sno'];
        $didquery = "SELECT did FROM department WHERE dcode='$branch'";
        $didresult = mysqli_query($con, $didquery);
        $didrow = mysqli_fetch_array($didresult);
        $did= $didrow['did'];
        $sno = sprintf("%03d", $sno);
        $regno = $year.$did.$sno;
      }
      //Reg No generated

      //Insert details to database
      $regquery = "INSERT into student VALUES('$name', '$regno', '$email', '$degree', '$branch', '$dob', '$gender')";
      $regquery2 = "INSERT into login VALUES('$regno', '$encpassword')";
      $regresult = mysqli_query($con, $regquery);
      if($regresult == 1){
        $regresult2 = mysqli_query($con, $regquery2);

        //Image handling
      // if(isset($_FILES['image']) && !empty($_FILES['image'])){
      //   $file_size =$_FILES['image']['size'];
      //   $file_tmp =$_FILES['image']['tmp_name'];
      //   $file_type=$_FILES['image']['type'];
      //   $tmp = explode('.',$_FILES['image']['name']);
      //   $file_ext=strtolower(end($tmp));
      //   $file_name=$regno.'.'.$file_ext;
      //   $expensions= array("jpeg","jpg","png");
      //
      //    if(in_array($file_ext,$expensions)=== false){
      //       $errors[]="extension not allowed, please choose a JPEG or PNG file.";
      //    }
      //
      //    if($file_size > 2048000){
      //       $errors[]='File size must be less than 200KB';
      //    }
      //
      //    if(empty($errors)==true){
      //       move_uploaded_file($file_tmp,"images/uploads/".$file_name);
      //    }else{
      //       print_r($errors);
      //       die();
      //    }
      //  }

        if($regresult2 == 1){
          $_SESSION['regno']=$regno;
          echo "
          <script type=\"text/javascript\">
            alert('You\'ve been successfully registered!');
            window.location = \"profile.php\";
          </script>
          ";
        }
      }
    }else{
      // if(isset($_POST['submit'])){
      if($_SERVER['REQUEST_METHOD']=='POST'){
      // echo "Error occured!";
      echo "
      <script type=\"text/javascript\">
        document.getElementById('errormsg').innerHTML=\"Error occured! Please check your details\";
        document.getElementById('errormsg').style.visibility=\"visible\";
      </script>
      ";
    }
    }
  ?>
