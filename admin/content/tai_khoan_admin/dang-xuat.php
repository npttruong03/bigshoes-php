<?php
require_once("../thong-ke/check-login.php");
session_start();
check_login1();
?>

<?php
	session_start();
	session_destroy();
	setcookie('ma_ad','', time() -1);
	setcookie('mat_khau','', time() -1);
	echo "<script>alert('Logout Successfull.'); location.href='./dang-nhap.php';</script>";
?>