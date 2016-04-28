
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
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Results</title>
  <style>
      table, th, td{
        border: 1px solid #000;
      }
      td{
        width: 100px;
      }
  </style>
</head>
<body>
  <table>
    <tr>
        <td><b>Course</b></td>
        <td><b>Marks</b></td>
        <td><b>Credits</b></td>
        <td><b>Year</b></td>
        <td><b>Grade</b></td>
        <td><b>Pointer</b></td>
    </tr>
    <?php
    require("dbconnect.php");
    $regno = $_SESSION['regno'];
    $resquery = "SELECT * FROM results WHERE regno='$regno'";
    $resresult = mysqli_query($con, $resquery);
    while($res = mysqli_fetch_array($resresult)){
       $marks= $res['marks'];
       $cnum= $res['cnumber'];
       $cquery = "SELECT * FROM `course` WHERE cnumber='$cnum'";
       $cresult = mysqli_query($con, $cquery);
       $cres = mysqli_fetch_array($cresult);
       $credits = $cres['credits'];
       $year = $cres['cyear'];

      $gquery = "SELECT * FROM `grade`";
      $gresi = mysqli_query($con, $gquery);
      while($gres = mysqli_fetch_array($gresi)){
        if($gres['min_mark']<$marks){
          $grade = $gres['lgrade'];
          $pointer = $gres['pointer'];
          break;
        }
      }

       echo "<tr>
           <td>$cnum</td>
           <td>$marks</td>
           <td>$credits</td>
           <td>$year</td>
           <td>$grade</td>
           <td>$pointer</td>
       </tr>";
     }
    ?>
  </table>
</body>
</html>
