<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UniSync | Login</title>
    <script src="js/script.js"></script>
    <script src="js/jquery/dist/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: rgba(255, 255, 255, 0.8);
            background-image: url('images/bg.jpg');
        }

        .card {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 20px;
        }

        .container {
            grid-column: 1 / span 1;
            padding: 30px;
        }

        .additional-info {
            grid-column: 2 / span 1;
            padding: 20px;
            background-image: linear-gradient(to bottom right, #20B1FF, #006CF7);
            border: none;
            border-top-right-radius: 30px;
            border-bottom-right-radius: 30px;
        }

        .additional-info img {
            padding-top: 20px;
            padding-bottom: 10px;
            max-width: 100%;
            max-height: 80px;
        }

        .container form div {
            margin-bottom: 10px;
        }

        .container form div label {
            display: block;
            margin-bottom: 5px;
        }

        .container form div input,
        .container form div select,
        .container form div textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .container form div button {
            width: auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        #sentence {
            font-weight: bold;
            color: white;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="container">
            <h2>LOGIN FORM</h2>
            <form id="loginForm" method="post" action="login.php">
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="button" onclick="loginUser()">LOGIN</button>
            </form>
        </div>
        <div class="additional-info">
    <img src="images/unisync.png" alt="Example Image">
    <label id="sentence"><br>Sign in now for personalized educational support from our expert instructors. Elevate your learning journey with exclusive resources and interactive sessions. Log in today to take control of your education!</label>
    <p style="color: white;">If you haven't registered yet, <a href="register_form.php" style="color: yellow;">Sign up</a> to register.</p>
<?php
    include('includes/footer.php');
?>