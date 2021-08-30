<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../header/headerStyle.css"/>
    <link rel="stylesheet" href="../header/headerStyle.css"/>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    
    <script src="../jquery-3.5.1.min.js"></script>
</head>
<body>
    <div class="container">
        
        <div class="navbar">
            <img src="../imgs/capture.png">
            <ul id="menu1">
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
                <hr>
                <li class="icons-mobile"><a href="../register_login/register.php"><i class="fas fa-user-circle"></i><span>Register/Login</span></a></li>
                <li class="icons-mobile"><a href="#"><i class="fas fa-shopping-cart"></i><span>Cart</span></a></li>
            </ul>

            <table>
                <tr>
                <form method="POST">    
                <td><input type="text" placeholder="Search..."/></td>
                <td><button><i class="fas fa-search"></i>&nbsp;&nbsp;<span id="searchText"></span></button></td> 
                <td class="icon-style">
                    
                <?php 
                session_start();
                if(isset($_SESSION["clientName"]) && !empty($_SESSION["clientName"])){
                    echo "<i class=\"fas fa-user-circle\"></i><span>".$_SESSION["clientName"]."</span>";
                    echo "<td class=\"icon-style\"><a><i class=\"fas fa-shopping-cart\"></i><span>Cart</span>";
                }
                else if(isset($_SESSION["companyName"]) && !empty($_SESSION["companyName"])){
                    echo "<i class=\"fas fa-building\"></i><span>".$_SESSION["companyName"]."</span>";
                    echo "<td class=\"icon-style\"><a><i class=\"fas fa-shopping-cart\"></i><span>Cart</span>";
                }




                else{
                    echo "<a href=\"../register_login/register.php\"><i class=\"fas fa-user-circle icon-style\"></i>
                    <span>Register/Login</span></a>";    
                echo "</td>";
                }
                ?>                   
               
                </tr>       
            </table>

            <div class="mobile-menu">
            <i class="fas fa-bars"></i>
            </div>
        </div>
    </div>



    <script>
       $(document).ready(function(){
           $(".mobile-menu").click(function(){
               $(".navbar ul").toggle();
               $("table").toggle();
           });
           $( window ).resize(function() {
        if($(window).width()>=1100){
            $(".navbar ul").show();
            $("table").show();
        }
           });
       });

    </script>
