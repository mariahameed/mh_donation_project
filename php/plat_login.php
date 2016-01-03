<?php
$_POST = json_decode(file_get_contents('php://input'), true);

    $response=array();
    $response["success"]=-1;
//    $response["errors"]=array();
if (isset($_POST["username"])  && isset($_POST["password"])){
    
if (preg_match('/\s/',$_POST["username"])){
    $response["errors"]="Username has spaces!";
    echo json_encode($response);
    exit();
}
    else if(preg_match('/\s/',$_POST["password"])){
        $response["errors"]="Password has spaces!";
    echo json_encode($response);
    exit();
    }
    else if(strlen($_POST["password"])<6){
    $response["errors"]="Password should be at least 6 character long!";
    echo json_encode($response);
    exit();
}
    require_once __DIR__ . '/db_connect.php';
    
    $username=$_POST["username"];
    $pass=$_POST["password"];
    $db= new DB_CONNECT();
    $db_c= $db->connect("userdata");
    $qry= $db_c->prepare("SELECT * from user_details where  username=? AND password=?");
    // fist argument tells format of each parameter
    $pass=sha1($pass);
    $qry->bind_param("ss",$username,$pass);
    $qry->execute();
    $result=$qry->get_result();
    if(mysqli_num_rows($result) == 1){
        $response["success"]=1;
       $row = mysqli_fetch_array($result);
        $response['user_details']=array();
//        $info=array();
         $response["user_details"]["firstname"]=$row["firstname"];
        $response["user_details"]["lastname"]=$row["lastname"];
         $response["user_details"]["username"]=$row["username"];
         $response["user_details"]["email"]=$row["email"];
        
        session_start();
        $_SESSION["session_name"]=$row["user_id"];
        if($row["role"]==1){
            $_SESSION["admin"]=1;
        }
//         setcookie("user_id", $row["user_id"], time() + (86400 * 30), "/");
//        array_push($response['user_details'],$info);
    }
    else{
        $response["errors"]="Username or Password incorrect!";
//    echo json_encode($response);
//    exit(); 
    }
    mysqli_close($db_c);
}
 echo json_encode($response);
?>