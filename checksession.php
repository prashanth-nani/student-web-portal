<?php
function in_session(){
  session_start();
  if(!isset($_SESSION['regno']) || empty($_SESSION['regno'])){
    return false;
  }
  else{
    return true;
  }
}
?>
