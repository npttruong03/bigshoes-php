<?php
require_once("../thong-ke/check-login.php");
session_start();
check_login1();
?>
<?php
    require_once ('../../dao/binh-luan.php');

    extract($_REQUEST);

    binh_luan_delete($ma_bl);

    header('location: binh-luan-list.php');

?>