<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="companiesManageStyle.css"/>
    <title>Document</title>
</head>
<body>
    <div class="company-manage-container">
        <h1>Company Managment Page</h1>
        <p><i>This section is for searching/updating/deleting a company.</i></p>
        <div class="company-details">
         <h3>Companies</h3>
         <span>Search companies by:</span>
         <select>
             <option>Company name</option>
             <option>Mobile</option>
             <option>Email</option>
        </select>
        <input type="text"/>
        <input type="button" id="search" value="Search"/>
         <table class="companies-table">
        <tr>
      <th>Company name</th>
      <th>Mobile name</th>
      <th>Mobile</th>
      <th>Email</th>
      <th>Password</th>
      <th>Discounts(%)</th>
      <th>Operation</th>
    </tr>
    <tr>
      <td>Wadih</td>
      <td>Morkos</td>
      <td>76132016</td>
      <td>wadihmorkos9</td>
      <td>12345</td>
      <td>0%</td>
      <td><input type="button" value="Update"/><input type="button" value="Delete"/>
    </td>
    </tr>
</table>
    </div>
    <hr></hr>
    <div class="company-add-update">
        <h3>Add a new Company</h3>
        <p><i>This section is for adding a new company.</i></p>
        <table>
            <tr>
                <td>Company name</td>
                <td><input type="text" name="cname"></td>
            </tr>
            <tr>
            <td>Mobile</td>
            <td><input type="text" name="mobile"/></td>
        </tr>
        <tr>
            <td>City</td>
            <td><input type="text" name="cityname"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        
        <tr>
            <td>Password</td>
            <td><input type="password" name="pass"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="button" value="Add"/></td>
        </tr>
        </table>
    </div>
    <hr></hr>
    <div class="company-products">
        <h3>Companies products</h3>
        <p><i>This section is for viewing/removing a company product.</i></p>
        <table class="companies-table">
        <tr>
      <th>Product image </th>
      <th>Produc name</th>
      <th>Product categorie</th>
      <th>Product sub categorie</th>
      <th>Operation</th>
    </tr>
    <tr>
        <td>img.jpg</td>
      <td>12353</td>
      <td>12</td>
      <td>wadih</td>
      <td><input type="button" value="Delete"/>
    </td>
    </tr>
</table>
<hr></hr>
    </div>
    <div class="company-orders">
        <h3>Companies orders</h3>
        <p><i>This section is for viewing/updating/deleting an order.</i></p>
        <span>Search orders by:</span>
         <select>
             <option>Date</option>
             <option>Company name</option>
             <option>Order status</option>
        </select>
        <input type="text"/>
        <input type="button" id="search" value="Search"/>
    <table class="companies-table">
        <tr>
      <th>Order number </th>
      <th>Company id</th>
      <th>Company name</th>
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