<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="managersManageStyle.css"/>
    <title>Document</title>
</head>
<body>
    <div class="manager-manage-container">
        <h1>Manager Managment Page</h1>
        <div class="manager-details">
         <h3>Managers</h3>
         <table class="managers-table">
        <tr>
      <th>Manager username</th>
      <th>Manager email</th>
      <th>Manager password</th>
      <th>Operation</th>
    </tr>
    <tr>
      <td>Wadih</td>
      <td>wadihmorkos9@gmail.com</td>
      <td>76132016sqadfc</td>
      <td><input type="button" value="Update"/><input type="button" value="Delete"/>
    </td>
    </tr>
</table>
    </div>
    <hr></hr>
    <div class="manager-add-update">
        <h3>Add a new Manager</h3>
        <table>
            <tr>
                <td>User name</td>
                <td><input type="text" name="mname"></td>
            </tr>
        <tr>
        <tr>
            <td>Email</td>
            <td><input type="email" class="adjust-inp" name="email"/></td>
        </tr>
        
        <tr>
            <td>Password</td>
            <td><input type="password" class="adjust-inp" name="pass"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="button" value="Add"/></td>
        </tr>
        </table>
    </div>
    </div>

</body>
</html>