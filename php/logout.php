<?php
$response=array();
    $response["success"]=-1;
session_start();
if (!isset($_SESSION["session_name"])){
    header("Location:../index.php");
  exit();
}
else{
     $response["success"]=1;
    session_destroy();
}
header("Location:../index.php");

?>
