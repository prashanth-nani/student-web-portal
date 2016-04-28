<?php
require('checksession.php');
if(!in_session()){
  echo
  "<script type='text/javascript'>
    alert('You\'re not logged in! Please login to continue');
    window.location = 'login.php';
  </script>";
  die();
  //  header("location:login.php");
}
else{
  // echo "You're logged in! Kudos!!!";
  //Get all the student details for displaying on the profile
  require("dbconnect.php");
  $regno = $_SESSION['regno'];
  $studentquery = "SELECT * FROM student WHERE regno='$regno'";
  $studentresult = mysqli_query($con, $studentquery);
  while($student = mysqli_fetch_array($studentresult)){
    $name= $student['name'];
    $email= $student['email'];
    $degree= $student['degree'];
    $branch= $student['branch'];
    $dob= $student['dob'];
    $gender= $student['gender'];
  }
}
?>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>
      <?php  echo $name.'\'s Profile'?>
    </title>
    <link rel="stylesheet" href="css/styles.css"></link>
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
      <div id="Results">
        <!-- <button type="button" name="button"><a href="#">Results</a></button> -->
        <form action="results2.php" method="post">
          <input type="submit" name="results" value="Results">
        </form>
      </div>
      <div id="logout">
        <button type="button" name="button"><a href="logout.php">Logout</a></button>
      </div>
      <br><br>
      <div class="container">
        <div id="profile">
          <img src="images/default.png" alt="image"></img>
        </div>
        <div class="details">
          <br><br>
          <div id="editbutton" onclick="enableelements()">
            <input type="button" name="name" value="Edit" >
          </div>
          <br>
          <script type="text/javascript">
          // document.getElementById('degree').a
          function enableelements(){
            $inp = document.getElementsByClassName('inp');
            for(i=0; i< $inp.length; i++){
              $inp[i].disabled = false;
              $inp[i].style.border = '1px solid #000';
              $inp[i].style.padding = '2px 3px';
            }
            // document.getElementBy('').disabled = true;
            document.getElementById('regno').disabled = true;
            document.getElementById('regno').style.border = '0px';
            document.getElementById('updatebtn').style.visibility = "visible";
          }
          </script>
          <form action="profile.php" method="post">
          <table>
            <tr>
              <td><label class="label">Name:</label></td>
              <td><input type="text" class="inp" name="name" disabled value="<?php echo $name ?>"></td>
            </tr>

            <tr>
              <td><label class="label">Reg. No:</label></td>
              <td><input type="text" name="regno" id="regno" class="inp" disabled value="<?php echo $regno ?>"></td>
            </tr>

            <tr>
              <td><label class="label">Date of Birth:</label></td>
              <td><input type="date" name="dob" class="inp" disabled value="<?php echo $dob ?>"></td>
            </tr>

            <tr>
              <td><label class="label">Gender:</label></td>
              <td><input type="text" name="gender" disabled class="ucase inp" value="<?php echo $gender ?>"></td>
            </tr>

            <tr>
              <td><label class="label">Email:</label></td>
              <td><input type="text" name="email" disabled class="inp" value="<?php echo $email ?>"></td>
            </tr>

            <tr>
              <td><label class="label">Degree:</label></td>
              <td>
                <!-- <input type="text" name="degree" id="tdegree" disabled class="ucase inp" value="<?php echo $degree ?>"> -->
                <select name="degree" id="degree" disabled class="inp">
                <?php
                    require('dbconnect.php');
                    // echo '<option value="'.$degree['degree'].'"selected>'.$degree['dname'].'</option>';
                    $degquery = 'SELECT degree, dname FROM degree';
                    $degresult = mysqli_query($con, $degquery);
                    while($degreee = mysqli_fetch_array($degresult)){
                      if($degreee['degree']!=$degree)
                        echo '<option id="'.$degreee['degree'].'"value="'.$degreee['degree'].'">'.$degreee['dname'].'</option>';
                       else
                         echo '<option value="'.$degreee['degree'].'"selected>'.$degreee['dname'].'</option>';
                    }
                ?>
                </select>
              </td>
            </tr>

            <tr>
              <td><label class="label">Branch:</label></td>
              <td>
                <!-- <input type="text" name="branch" id="tbranch" disabled class="ucase" value="<?php echo $branch ?>"> -->
                <select name="branch" id="branch" disabled  class="inp">
                  <?php
                    $brquery = 'SELECT dcode, dname FROM department';
                    $brresult = mysqli_query($con, $brquery);
                    while($branchi = mysqli_fetch_array($brresult)){
                      if($branchi['dcode']!=$branch)
                        echo '<option value="'.$branchi['dcode'].'">'.$branchi['dname'].'</option>'."\n";
                      else
                         echo '<option value="'.$branchi['dcode'].'"selected>'.$branchi['dname'].'</option>'."\n";
                    }
                  ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <input type="submit" name="submit" id="updatebtn" value="Update">
              </td>
            </tr>
          </table>
        </form>
        </div>
      </div>
    </div>

  </body>

  </html>

  <?php
    $required = array('name', 'email', 'degree', 'dob', 'gender');
    $error = false;

    foreach($required as $field){
      if(!isset($_POST[$field]) || empty($_POST[$field])){
        $error = true;
        break;
      }
    }

    if(!$error){
      require('dbconnect.php');
      $name = htmlentities(trim($_POST['name']));
      $email = htmlentities(trim($_POST['email']));
      $degree = htmlentities(trim($_POST['degree']));
      $dob = htmlentities(trim($_POST['dob']));
      $gender = htmlentities(trim($_POST['gender']));
      // $password = htmlentities(trim($_POST['password']));
      $branch = htmlentities(trim($_POST['branch']));
      //Generating registration number
      //Reg No generated

      //Insert details to database
      $regquery = "UPDATE student SET name=\"$name\",email=\"$email\",degree=\"$degree\",branch=\"$branch\",`dob`=\"$dob\",`gender`=\"$gender\" WHERE `regno`=\"$regno\"";
      // $regquery2 = "INSERT into login VALUES('$regno', '$encpassword')";
      $regresult = mysqli_query($con, $regquery);
      if($regresult){
        echo "
        <script type='text/javascript'>
          alert(\"Updated successfully\");
          window.location = \"profile.php\";
        </script>";
      }
    }else{
      // if(isset($_POST['submit'])){
      if($_SERVER['REQUEST_METHOD']=='POST'){
      // echo "Error occured!";
      echo "
      <script type=\"text/javascript\">
        document.getElementById('updatebtn').style.visibility=\"hidden\";
        alert(\"Please fill in all the fields\");
      ";
    }
    }
  ?>
