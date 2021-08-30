<?php
include "../db_con/connection.php";
if(isset($_POST["accountType"]) && !empty($_POST["accountType"])){
$checkbox=$_POST["accountType"];
$error="";
$checker=true;
if($checkbox=="customer"){
    if(isset($_POST["fname"]) && !empty($_POST["fname"]) && isset($_POST["lname"]) && !empty($_POST["lname"]) && isset($_POST["mobile"]) && !empty($_POST["mobile"]) && isset($_POST["email"]) && !empty($_POST["email"]) && isset($_POST["pass"]) && !empty($_POST["pass"]) && (isset($_POST["pass2"])) && !empty($_POST["pass2"])){
        $fname=validate_input($_POST["fname"]);
        $lname=validate_input($_POST["lname"]);
        $mobile=validate_input($_POST["mobile"]);
        $email=validate_input($_POST["email"]);
        $pass=validate_input($_POST["pass"]);
        $pass2=validate_input($_POST["pass2"]);
        if(!preg_match("/^[a-zA-Z]+$/",$fname)){
            $error.="First name must contains only letters<br>";
            $checker=false;
            }
        
            if(!preg_match("/^[a-zA-Z]+$/",$lname)){
                $error.="Last name must contains only letters<br>";
                $checker=false;
                }

        if(!preg_match("/^[0-9]+$/",$mobile)){
            $error.="Mobile must contains only numbers<br>";
            $checker=false;
            }
            
           if(!preg_match("/^\w+@\w+[.]\w+$/",$email)){
            $error.="email contains errors<br>";
            $checker=false;
            }
            
           if(!preg_match("/^\w{8,}$/",$pass)){
            $error.="password length must be 8 or above<br>";
            $checker=false;
            }
    
            if($pass2!=$pass){
                $error.="passwords don't match<br>";
                $checker=false;
            }

            if($checker==true){
                $pass=md5($pass);
                $requete="Insert into clients (firstName,lastName,mobile,email,password) values ('$fname','$lname',$mobile,'$email','$pass')";
                mysqli_query($con,$requete);
                $error=mysqli_error($con);
            }
      
        
    }
}








else{
    if(isset($_POST["compname"]) && !empty($_POST["compname"]) && isset($_POST["mobile"]) && !empty($_POST["mobile"]) && isset($_POST["email"]) && !empty($_POST["email"]) && isset($_POST["pass"]) && !empty($_POST["pass"]) && (isset($_POST["pass2"])) && !empty($_POST["pass2"])){

       $companyName=validate_input($_POST["compname"]);
       $mobile=validate_input($_POST["mobile"]);
       $email=validate_input($_POST["email"]);
       $pass=validate_input($_POST["pass"]);
       $pass2=validate_input($_POST["pass2"]);
        
       if(!preg_match("/^[a-zA-Z]+$/",$companyName)){
            $error.="Company name must contains only letters<br>";
            $checker=false;
       }
       
       if(!preg_match("/^[0-9]+$/",$mobile)){
        $error.="Mobile must contains only numbers<br>";
        $checker=false;
        }
        
       if(!preg_match("/^\w+@\w+[.]\w+$/",$email)){
        $error.="email contains errors<br>";
        $checker=false;
        }
        
       if(!preg_match("/^\w{8,}$/",$pass)){
        $error.="password length must be 8 or above<br>";
        $checker=false;
        }

        if($pass2!=$pass){
            $error.="passwords don't match<br>";
            $checker=false;
        }
        if($checker==true){
            $pass=md5($pass);
            $requete="Insert into company (companyName,mobile,email,password) values ('$companyName',$mobile,'$email','$pass')";
            mysqli_query($con,$requete);
            $error=mysqli_error($con);
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