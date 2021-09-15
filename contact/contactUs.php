<?php
include "../header/header.php";
?>
<head>
    <link rel="stylesheet" href="contactUsStyle.css">
</head>

<h1>Contact us Page</h1>
<div class="contact-container">
    <div class="contact">
<h3>Please fill the form below.</h3>
<h3><span>NOTE:<i>You have to be a registered user.</i></span></h3>
<form method="POST">
    <span class="spans">Full name or Company name</span>
    <span class="spans"><input type="text" class="input"/></span>
    <span class="spans">Email</span>
    <span class="spans"><input type="email" class="input"/></span>
    <span class="spans">Message</span>
    <span class="spans"><textarea cols="35" rows="5"></textarea></span>
    <span class="spans"><input type="submit" value="send"/></span>
</form>
</div>

    <div class="info">
        <h3>Benefits of contacting us.</h3>
        <ul>
            <li>Ask about a specific product.</li>
            <li>Decline an order.</li>
            <li>Share you're product.</li>
        </ul>
    </div>
</div>

<?php
include "../footer/footer.php";
?>