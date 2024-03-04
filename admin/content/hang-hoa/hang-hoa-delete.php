
<?php
require_once("../thong-ke/check-login.php");
session_start();
check_login1();
?>
<?php
    require_once ('../../dao/hang-hoa.php');

    extract($_REQUEST);

    hang_hoa_delete($ma_hh);

    header('location: hang-hoa-list.php');

?>