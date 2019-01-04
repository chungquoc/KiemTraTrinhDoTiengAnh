<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dtb="quest";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password,$dtb);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    mysqli_set_charset($conn,"utf8");
?>