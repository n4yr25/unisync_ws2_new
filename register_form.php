<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UniSync | Register</title>
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
            padding-top: 50px;
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

        .a {
            color: yellow;
        }
        #addition{
            color: white;
        }
    </style>
</head>

<body>
    <div class="card">
        <div class="container">
            <h2>REGISTRATION FORM</h2>
            <form method="post">
                <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div>
                    <label for="confirm_password">Confirm Password:</label>
                    <input type="password" id="confirm_password" name="confirm_password" required>
                </div>
                <div>
                    <label for="firstname">First Name:</label>
                    <input type="text" id="firstname" name="firstname" required>
                </div>
                <div>
                    <label for="lastname">Last Name:</label>
                    <input type="text" id="lastname" name="lastname" required>
                </div>
                <div>
                    <label for="section">Section:</label>
                    <input type="text" id="section" name="section" required>
                </div>
                <div>
                    <label for="yearlevel">Year Level:</label>
                    <select id="yearlevel" name="yearlevel" required>
                        <option value="1st Year">1st Year</option>
                        <option value="2nd Year">2nd Year</option>
                        <option value="3rd Year">3rd Year</option>
                        <option value="4th Year">4th Year</option>
                    </select>
                </div>
                <div>
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" required></textarea>
                </div>
                <button type="button" onclick="registerUser()">REGISTER</button>
            </form>
        </div>
        <div class="additional-info">
            <img src="images/unisync.png" alt="Example Image">
            <label id="sentence" style="color: white;"><br> Register now for personalized educational consultation with our expert instructors and elevate your learning journey!</label>
            <p style="color: white;">If you are already registered, <a href="index.php" style="color: yellow;">Login</a> to get started.</p>
        </div>
    </div>
    </div>
</body>
</html>
