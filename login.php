
<head>
    <link rel="stylesheet" href="../register_login/loginStyle.css">
</head>

<?php
include "../header/header.php";
?>
<div class="container-login">
    <h1>Log in</h1>
    <form method="POST">
        <div>
            <span>Email</span>
            <span><input type="email" class="adjust-inp"/></span>
        </div>
        
        <div>
            <span>Password</span>
            <span><input type="password" class="adjust-inp"/></span>
        </div>
        
        <div>
            <input type="submit" value="Log In"/>
        </div>
        
    </form>
</div>


<?php
include "../footer/footer.php";
?>