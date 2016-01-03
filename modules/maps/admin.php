<?php
$response=array();
    $response["success"]=-1;
session_start();
if (!isset($_SESSION["session_name"])){
    header("Location:../index.php");
  exit();
}
else if(!isset($_SESSION["admin"])){
   header("Location:./index.php");
  exit();
}
else{
    echo "admin panel of maps";
}
//echo json_encode($response);
?>
