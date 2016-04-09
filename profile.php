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
  <title><?php  echo $name.'\'s Profile'?></title>
</head>
<body>

</body>
</html>
