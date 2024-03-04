<?php
// session_start();
function check_login1(){
    if($_SESSION["ma_ad"] != true){
        echo "<script>alert('Bạn chưa đăng nhập'); 
            location.href='../tai_khoan_admin/dang-nhap.php';
            </script>";
        // header("Location: ../index.php");
        exit;
    }
}
?>