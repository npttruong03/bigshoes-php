<?php
require_once("../thong-ke/check-login.php");
session_start();
check_login1();
?>
<?php
    require_once ('../../dao/khach-hang.php');

    extract($_REQUEST);

    khach_hang_delete($ma_kh);

    header('location: khach-hang-list.php');

?>