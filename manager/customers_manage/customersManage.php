<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="customersManageStyle.css"/>
    <title>Document</title>
</head>
<body>
    <div class="customer-manage-container">
        <h1>Customer Managment Page</h1>
        <div class="customer-details">
         <h3>Customers</h3>
         <p><i>This section is for searching/updating/deleting a customer.</i></p>
         <span>Search customers by:</span>
         <select>
             <option>First name</option>
             <option>Last Name</option>
             <option>Mobile</option>
             <option>Email</option>
             <option>Date of birth</option>
        </select>
        <input type="text"/>
        <input type="button" id="search" value="Search"/>
        <div>
         <table class="customers-table">
        <tr>
      <th>First name</th>
      <th>Last name</th>
      <th>Mobile</th>
      <th>Email</th>
      <th>Password</th>
      <th>Date of birth</th>
      <th>Discounts(%)</th>
      <th>Operation</th>
    </tr>
    <tr>
      <td>Wadih</td>
      <td>Morkos</td>
      <td>76132016</td>
      <td>wadihmorkos9</td>
      <td>12345</td>
      <td>2021</td>
      <td>0%</td>
      <td><input type="button" value="Update"/><input type="button" value="Delete"/>
    </td>
    </tr>
</table>
</div>
    </div>
    <hr></hr>
    <div class="customer-add-update">
        <h3>Add a new Customer</h3>
            <p><i>This section is for adding a new customer.</i></p>
        <table>
            <tr>
                <td>First name</td>
                <td><input type="text" name="fname"></td>
            </tr>
             <tr>
                <td>Last name</td>
                <td><input type="text" name="lname"></td>
            </tr>

        <tr>
            <td>Birth date</td>
            <td><input type="date" class="adjust-inp" name="date"/></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="radio" name="gender" value="female"/>   Female
            <input type="radio" name="gender" value="male"/>    Male</td>

        </tr>
        <tr>
            <td>City</td>
            <td><input type="text" class="adjust-inp" name="cityname"/></td>
        </tr>
        <tr>
            <td>Mobile no.</td>
            <td><input type="text" class="adjust-inp" name="mobile"></td>
        </tr>
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
    <hr></hr>
    <div class="customer-orders">
        <h3>Customers orders</h3>
        <p><i>This section is for viewing/updating/deleting an order.</i></p>
        <span>Search orders by:</span>
         <select>
             <option>Date</option>
             <option>Customer name</option>
             <option>Order status</option>
        </select>
        <input type="text"/>
        <input type="button" id="search" value="Search"/>
    <table class="customers-table">
        <tr>
      <th>Order number </th>
      <th>Customer id</th>
      <th>Customer name</th>
      <th>Date</th>
      <th>Order status</th>
      <th>Operation</th>
    </tr>
    <tr>
      <td>12353</td>
      <td>12</td>
      <td>wadih</td>
      <td>2021/1/12</td>
      <td>Delivred</td>
      <td><input type="button" value="Update"/><input type="button" value="Delete"/>
    </td>
    </tr>
</table>
    <h3>Update Order status</h3>
    <span>Change the selected order status to:</span>
    <select>
        <option>Pending</option>
        <option>Delivred</option>
    </select>
    </div>
    </div>

</body>
</html>