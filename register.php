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
  <title>Registration</title>
</head>
<body>
  <form action="register.php" method="post">
    <input type="text" name="name" placeholder="Full Name" required/>
    <br>
    <input type="email" name="email" placeholder="Email" required><br>
    Degree:
    <select name="degree" required>
      <option value="btech">B.Tech</option>
      <option value="mtech">M.Tech</option>
      <option value="phd">PhD</option>
      <option value="mba">MBA</option>
      <option value="mca">MCA</option>
    </select>
    <br>
    Branch:
    <select name="branch" required>
      <option value="cse">CSE</option>
      <option value="it">IT</option>
      <option value="ece">ECE</option>
      <option value="ee">EE</option>
      <option value="ce">CE</option>
      <option value="me">ME</option>
      <option value="che">CHE</option>
      <option value="pie">PIE</option>
    </select>
    <br>
    Date of Birth:
    <input type="date" name="dob" required/>
    <br>
    Gender:
    <input type="radio" name="gender" value="m" required checked="checked"/>Male
    <input type="radio" name="gender" value="f" required/>Female
    <br>
    <input type="password" name="password" placeholder="Enter a password" required/>
    <br>
    <input type="password" name="password2" placeholder="Retype password" required/>
    <br>
    <input type="submit" name="register" value="Register!">
  </form>

  <?php
    $required = array('name', 'email', 'degree', 'dob', 'gender', 'password', 'password2');
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
        $didquery = "SELECT did FROM department WHERE dname='$branch'";
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
        if($regresult2 == 1){
          // session_start();
          $_SESSION['regno']=$regno;
          echo "
          <script type=\"text/javascript\">
            alert('You\'ve been successfully registered!');
            window.location = \"profile.php\";
          </script>
          ";
        }
      }
    }
  ?>
</body>
</html>
