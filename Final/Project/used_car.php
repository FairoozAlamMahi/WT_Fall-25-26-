<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Used Car Details</title>
    <link rel="stylesheet" href="CSS/used_car.css">
    <script src="JS/used_car.js" defer></script>
</head>
<body>

<a href="dashboard.php">
    <img src="images/logo.png" id="logo">
</a>

<a href="marketplace.php" class="back_link">← Back to Marketplace</a>

<div id="car_container">

    <div id="car_image">
        <img src="images/marketplace/sample_car.jpg">
    </div>

    <div id="car_details">
        <h1>Toyota Corolla 2018</h1>

        <p class="price">Price: ৳ 25,00,000</p>

        <table>
            <tr>
                <td>Brand</td>
                <td>Toyota</td>
            </tr>
            <tr>
                <td>Location</td>
                <td>Dhaka</td>
            </tr>
            <tr>
                <td>Condition</td>
                <td>Used</td>
            </tr>
            <tr>
                <td>Description</td>
                <td>Well maintained, single owner, low mileage.</td>
            </tr>
        </table>

        <div class="phone_box">
            <button id="show_phone_btn">Show Phone Number</button>
            <p id="phone_number" style="display:none;">01XXXXXXXXX</p>
        </div>

    </div>

</div>


<a href="user1.html">
    <img src="images/user1.png" id="usericon"
         style="width: 60px;
    height: 60px;
    position: absolute;
    top: 10px;
    right: 70px;">
</a>




<div id="footer">
    <p>© 2025 NG Auto. All rights reserved.</p>
    <p>Contact: support@ngauto.com | +880-111-222-333</p>
</div>

</body>
</html>
