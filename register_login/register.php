
<head>
    <link rel="stylesheet" href="../register_login/registerStyle.css">
</head>

<?php
include "../header/header.php";
include "register_handler.php";

?>
<div class="container-register">
    <div class="form">
    <h1>Register for a new account</h1>
    <?php 
    if(!empty($error))   echo "<div class=\"error\">$error</div>";
    if(!empty($success)) echo "<div class=\"success\">$success</div>";
    ?>

    <form method="POST" action="register_handler.php">
        <div>
            <span>
                <input type="radio" name="accountType" id="cust" checked value="customer"/>  Customer
                <input type="radio" name="accountType" id="comp" value="company"/>   Company
             </span>
        </div>
        <div class="fn-ln customer">
            <div class="fn-div">
                <span>First name</span>
                <span><input type="text" name="fname"></span>
            </div>

            <div class="ln-div">
                <span>Last name</span>
                <span><input type="text" name="lname"></span>
            </div>

        </div>
        <div class="customer">
            <span>Birth date</span>
            <span><input type="date" class="adjust-inp" name="date"/></span>
        </div>
        <div class="gender customer">
            <span>Gender</span>
            <span><input type="radio" name="gender" value="female"/>   Female</span>
            <span><input type="radio" name="gender" value="male"/>    Male</span>

        </div>
        <div class="company">
            <span>Company name</span>
            <span><input type="text" class="adjust-inp" name="compname"/></span>
        </div>
        
        <div>
            <span>Mobile no.</span>
            <span><input type="text" class="adjust-inp" name="mobile"></td>
        </div>

       

        <div>
            <span>Email</span>
            <span><input type="email" class="adjust-inp" name="email"/></span>
        </div>
        
        <div>
            <span>Password</span>
            <span><input type="password" class="adjust-inp" name="pass"/></span>
        </div>
        
        
        <div>
            <span>Re-enter password</span>
            <span><input type="password" class="adjust-inp" name="pass2"/></span>
        </div>
        <div>
            <span>Do you have an account? <a href="login.php">Log In</a></span>
        </div>
        <div>
            <input type="submit" value="Register account"/>
        </div>
        
    </form>
</div>
<div class="info">
    <h3>Benefits of becoming a registered member</h3>
<ul>
    <li>Log in at any time to check order statuses</li>
    <li>Personalize your shopping</li>
    <li>Speed up future purchases</li>
</ul>
</div>
</div>
<?php
include "../footer/footer.php";
?>
