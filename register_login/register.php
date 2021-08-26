
<head>
    <link rel="stylesheet" href="../register_login/registerStyle.css">
</head>

<?php
include "../header/header.php";
?>
<div class="container-register">
    <div class="form">
    <h1>Register for a new account</h1>
    <form method="POST">
        <div class="fn-ln">
            <div class="fn-div">
                <span>First name</span>
                <span><input type="text"></span>
            </div>

            <div class="ln-div">
                <span>Last name</span>
                <span><input type="text"></input></span>
            </div>

        </div>
        
        <div>
            <span>Mobile no.</span>
            <span><input type="text" class="adjust-inp"></td>
        </div>

        <div>
            <span>Accout type</span>
            <span>
            <select>
                    <option value="customer">Customer</option>
                    <option value="company">Company</option>
                </select>
            </span>
        </div>

        <div>
            <span>Email</span>
            <span><input type="email" class="adjust-inp"/></span>
        </div>
        
        <div>
            <span>Password</span>
            <span><input type="password" class="adjust-inp"/></span>
        </div>
        
        
        <div>
            <span>Confirm password</span>
            <span><input type="password" class="adjust-inp"/></span>
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