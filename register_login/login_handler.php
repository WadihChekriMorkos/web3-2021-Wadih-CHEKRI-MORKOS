<?php
include "../db_con/connection.php";
if(isset($_POST["accountType"]) && !empty($_POST["accountType"])){
$checkbox=$_POST["accountType"];
$error="";
$checker=true;
    if(isset($_POST["email"]) && !empty($_POST["email"]) && isset($_POST["pass"]) && !empty($_POST["pass"])){
          
        $email=validate_input($_POST["email"]);
          $pass=validate_input($_POST["pass"]);
       
        
       if(!preg_match("/^\w+@\w+[.]\w+$/",$email)){
        $error.="email contains errors<br>";
        $checker=false;
        }
        
       if(!preg_match("/^\w{8,}$/",$pass)){
        $error.="password length must be 8 or above<br>";
        $checker=false;
        }

        if($checker==true && $checkbox=="company"){
            $pass=md5($pass);
            $requete="select * from company where email='$email' and password='$pass'";
           $result= mysqli_query($con,$requete);
            if(mysqli_num_rows($result)==0){
                $error="This account does not exists";
            }
            else{
               $resultat=mysqli_fetch_assoc($result);
               $_SESSION["companyName"]=$resultat["companyName"];
               header("Location:../home/home.php");
            }

        }
        else if($checker==true && $checkbox=="customer"){
            $pass=md5($pass);
            $requete="select * from clients where email='$email' and password='$pass'";
           $result= mysqli_query($con,$requete);
            if(mysqli_num_rows($result)==0){
                $error="This account does not exists";
            }
            else{
                $resultat=mysqli_fetch_assoc($result);
                $_SESSION["clientName"]=$resultat["firstName"];
                header("Location:../home/home.php");
            } 
        }
    }
    


}
function validate_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

?>
