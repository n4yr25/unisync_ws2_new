<?php
    require "includes/config.php";

    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM student_account WHERE email='$email' AND password='$password'";
    $result = $connect->query($sql);

    if($result->num_rows == 1) {
        echo "success";
    }
    else {
        echo "failed";
    }
?>