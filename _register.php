<?php
    require "includes/config.php";

    $email = $_POST['email'];
    $password = $_POST['password'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $section = $_POST['section'];
    $yearlevel = $_POST['yearlevel'];
    $address = $_POST['address'];

    $sql = "INSERT INTO student_account (email, password, firstname, lastname, section, yearlevel, address) VALUES ('$email', '$password', '$firstname', '$lastname', '$section', '$yearlevel', '$address')";

    $connect->query($sql);
?>