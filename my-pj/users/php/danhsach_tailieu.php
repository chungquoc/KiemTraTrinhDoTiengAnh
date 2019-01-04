<?php
    session_start();
    $json=array();
    if(isset($_SESSION['quyen']) && $_SESSION['quyen']=="2"){
        include '../../php/connect.php';
        $sql= "select id_tailieu,noidung_tailieu from tailieu";
        $result = mysqli_query($conn,$sql);
    
        if (mysqli_num_rows($result) > 0) {
            // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
                $ID= $row["id_tailieu"];
                $noidung_tailieu = $row["noidung_tailieu"];
                array_push($json,array("id_tailieu"=>$ID, "noidung_tailieu"=>$noidung_tailieu));
            }
            // $row = mysqli_fetch_assoc($result);
        }
        mysqli_close($conn);
    }
    echo json_encode($json);
?>