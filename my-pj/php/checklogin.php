<?php
        session_start();
        include 'connect.php';
        $tk = $_POST['username'];
        $mk = $_POST['password'];
        $sql = "SELECT * FROM Users where Tentk='$tk' and pass='$mk'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            
            $row = mysqli_fetch_assoc($result);
            $_SESSION['ID']=$row['IdUser'];
            $_SESSION['username']=$row['Tentk'];
            $_SESSION['quyen']=$row['user_level'];
            echo $row["user_level"];
        } else {
            echo "false";
        }
        mysqli_close($conn);
?>