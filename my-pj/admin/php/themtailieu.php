<?php
    session_start();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="1"){
        include "../../php/connect.php";
        $loai_tailieu = $_POST['loai_tailieu'];
        $noidung_tailieu =$_POST['noidung_tailieu']
        $sql="select * from tailieu where noidung_tailieu='$noidung_tailieu'";
        $res=mysqli_query($conn,$sql);
        if (mysqli_num_rows($res) > 0) {
            echo "Trùng nội dung";
        }else {
            $sql = "insert into tailieu values (null,'$loai_tailieu','$noidung_tailieu')";
            mysqli_query($conn,$sql);
            echo "Thêm thành công môn ";
        }

        mysqli_close($conn);
    }
    else{
        echo "Bạn không có quyền thêm tài liệu";
    }
?>