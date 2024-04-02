<?php
    include('includes/header.php');
    include('includes/sidenav.php');

    // session_start();

    // if(!isset($_SESSION['email'])) {
    //     header("Location: index.php");
    //     exit(); // Stop execution
    // }
    require "includes/config.php";

    $email = $_SESSION['email'];
    $sql = "SELECT * FROM student_account WHERE email = '$email'";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<div class='content'>";
            echo "<h2>Profile</h2>";
            echo "<p>Email: " . $row["email"] . "</p>";
            echo "<p>First Name: " . $row["firstname"] . "</p>";
            echo "<p>Last Name: " . $row["lastname"] . "</p>";
            echo "<p>Section: " . $row["section"] . "</p>";
            echo "<p>Year Level: " . $row["yearlevel"] . "</p>";
            echo "<p>Address: " . $row["address"] . "</p>";
            echo "</div>";
        }
    } else {
        echo "User not found.";
    }

    include('includes/footer.php');
?>
