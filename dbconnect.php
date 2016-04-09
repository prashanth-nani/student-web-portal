<?php
  $host = "localhost";
  $dbuser = "root";
  $dbpassword = "1330";
  $db = "Hogwarts";
  if(!($con = mysqli_connect($host, $dbuser, $dbpassword, $db))){
    die('Cannot connect to db');
  }
  // else {
  //   echo "Connected to db!";
  // }
 ?>
