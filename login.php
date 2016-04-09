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
  <title>Login</title>
</head>
<body>
  <form action="login.php" method="post">
    <input type="text" name="regno" placeholder="Registration No.">
    <input type="password" name="password" placeholder="password">
    <input type="submit" name="login" value="Login">
  </form>

  <?php
    if(isset($_POST['regno']) && isset($_POST['password']) && !empty($_POST['regno']) && !empty($_POST['password'])){
      $regno = htmlentities(trim($_POST['regno']));
      $password = htmlentities(trim($_POST['password']));
      $encpass = md5($password);
      require('dbconnect.php');
      $query = "SELECT regno, password FROM login WHERE regno='$regno' and password='$encpass'";
      if($result_set = mysqli_query($con, $query)){
        if(mysqli_num_rows($result_set)==1){
          while($row = mysqli_fetch_assoc($result_set)){
            $regno = $row["regno"];
          }
          session_start();
          $_SESSION['regno']=$regno;
          // echo $regno;
          mysqli_free_result($result_set);
          header("location:profile.php");
        }else{
          echo "Incorrect password!<br>";
          echo $encpass;
        }
      }
      else{
        die('Unable to connect. Please try again!');
      }
    }
    // Checking if submit clicked and fields are empty
    else{
      // if(!empty($_POST)){ //May not work when checkboxes without name are present in the form
      if($_SERVER['REQUEST_METHOD']=='POST'){
        echo "Please fill in all the fields";
      }
    }
   ?>
</body>
</html>
