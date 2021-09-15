<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../header/headerStyle.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    
    <script src="../jquery-3.5.1.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="client-options">
            <ul>
                <a href="../user_profile/profile.php"><li>View my profile</li></a>
                <a href="../register_login/logout.php"><li>Logout</li></a>
        </div>
    
        <div class="navbar">
            <img src="../imgs/capture.png">
            
            <ul id="menu1">
                <li><a href="../home/home.php">Home</a></li>
                <li class="categorie">
                    <a href="#">Categories</a>
                    <ul class="categorie-list">
                <?php 
                    include "../db_con/connection.php";
                    $allCategories="select categorieName from categories";
                    $result=mysqli_query($con,$allCategories);
                    while($row=mysqli_fetch_assoc($result)){
                        echo "<li>".$row["categorieName"]."</li>";
                    }
                ?>
                 </ul>
                </li>
            <li><a href="../contact/contactUs.php">Contact Us</a></li>
                <hr>
                <li class="icons-mobile"><a href="../register_login/register.php"><i class="fas fa-user-circle"></i><span>Register/Login</span></a></li>
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
                    echo "<i class=\"fas fa-user-circle icon-click\"></i><span class=\"icon-click\">".$_SESSION["clientName"]."</span></td>";
                    echo "<td class=\"icon-style\"><i class=\"fas fa-shopping-cart\"></i><span><a href=\"../cart/cart.php\">Cart</a></span></td>";
                }
                else if(isset($_SESSION["companyName"]) && !empty($_SESSION["companyName"])){
                    echo "<i class=\"fas fa-building icon-click\"></i><span class=\"icon-click\">".$_SESSION["companyName"]."</span></td>";
                    echo "<td class=\"icon-style\"><i class=\"fas fa-shopping-cart\"></i><span><a href=\"../cart/cart.php\">Cart</a></span></td>";
                }
                else{
                    echo "<a href=\"../register_login/register.php\"><i class=\"fas fa-user-circle icon-style\"></i>
                    <span class=\"reg-log\">Register/Login</span></a>";    
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
        var cat_clicks=0,client_options_clicks=0;
       $(document).ready(function(){
            $(".categorie").click(function() {
                if(cat_clicks%2==0){
                $(".categorie-list").show();
                $(".categorie").css("background-color","#2566c2");
                cat_clicks++;
                }
                else{
                    $(".categorie-list").hide();
                    $(".categorie").css("background-color","#4e97fd");
                    cat_clicks++;
                }
            });
            $(".icon-click").click(function() {
                if(client_options_clicks%2==0){
                $(".client-options").show();
                client_options_clicks++;
                }
                else{
                    $(".client-options").hide();
                    client_options_clicks++;
                }
            }
            );
            /*MOBILE PARTS*/ 
           $(".mobile-menu").click(function(){
               $(".navbar ul").toggle();
               $("table").toggle();
           });
           
           $( window ).resize(function() {
        if($(window).width()>=1100){
            $(".navbar ul").show();
            $("table").show();
        }
        if($(window).width()<900){
            $(".categorie-list").css("position","static");
        }
        else{
            $(".categorie-list").css("position","absolute");
        }
                  
       })
       }
       );

    </script>
