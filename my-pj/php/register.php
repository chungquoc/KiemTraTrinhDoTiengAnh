<?php
    include "connect.php";
    $tk = $_POST['username'];
    $mk = $_POST['password'];
    $email =$_POST['email'];
    $sql = "select * from Users where Tentk = '$tk'";
    $result = mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)>0){
        echo "Tên đăng nhập đã tồn tại";
    }
    else{
        $sql = "insert into Users values(null,'$tk','$mk','$email',now(),2)";
        mysqli_query($conn, $sql);
        echo "Tạo thành công ";
        
    }
    mysqli_close($conn);

?>