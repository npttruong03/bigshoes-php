<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>ADMIN</title>
	<!-- Bootstrap Styles-->
    <link href="../../../../../css/admin/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="../../../../../css/admin/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="../../../../../css/admin/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../../../../bigshoes/trang-chinh/"><strong style = "margin-left: 40px;">BIG SHOES</strong></a>
            </div>
           
    <!-- Nav bar-->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Cài đặt</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="../tai_khoan_admin/dang-xuat.php"><i class="fa fa-sign-out fa-fw"></i> Đăng xuất</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>

        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <li>
                        <a href="../../../thong-ke/thong-ke-list.php"><i class="fa fa-dashboard"></i>TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href="../../../loai-hang/loai-hang-list.php"><i class="fa fa-list-alt" aria-hidden="true"></i>LOẠI HÀNG</a>
                    </li>
                    <li>
                        <a href="../../../hang-hoa/hang-hoa-list.php"><i class="fa fa-qrcode"></i>HÀNG HÓA</a>
                    </li>
                    
                    <li>
                        <a href="../../../khach-hang/khach-hang-list.php"><i class="fa fa-user"></i>KHÁCH HÀNG</a>
                    </li>
                    <li>
                        <a href="../../../binh-luan/binh-luan-list.php"><i class="fa fa-comment-o" aria-hidden="true"></i>BÌNH LUẬN</a>
                    </li>
                    <li>
                        <a href="../../../hoa-don/hoa-don-list.php"><i class="fa fa-edit"></i>ĐƠN HÀNG</a>
                    </li> 
                    <li>
                        <a href="../../../tai_khoan_admin/thong-tin-tk.php"><i class="fa fa-user"></i>Tài Khoản Admin</a>
                    </li>
                    <li>
                        <a href="../../../tin-tuc/tin-tuc-list.php"><i class="fa fa-book"></i>Tin Tức</a>
                    </li>       
                </ul>
            </div>

        </nav>
        
        <?php

        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;

if (isset($_GET['action']) && $_GET['action'] == "send") {
            if (empty($_POST['email'])) { //Kiểm tra xem trường email có rỗng không?
                $error = "Bạn phải nhập địa chỉ email";
            } elseif (!empty($_POST['email']) && !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $error = "Bạn phải nhập email đúng định dạng";
            } elseif (empty($_POST['content'])) { //Kiểm tra xem trường content có rỗng không?
                $error = "Bạn phải nhập nội dung";
            }
            if (!isset($error)) {
                include 'library.php'; // include the library file
                require 'vendor/autoload.php';
                $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
                try {
                    //Server settings
                    $mail->CharSet = "UTF-8";
                    $mail->SMTPDebug = 0;                                 // Enable verbose debug output
                    $mail->isSMTP();                                      // Set mailer to use SMTP
                    $mail->Host = SMTP_HOST;  // Specify main and backup SMTP servers
                    $mail->SMTPAuth = true;                               // Enable SMTP authentication
                    $mail->Username = SMTP_UNAME;                 // SMTP username
                    $mail->Password = SMTP_PWORD;                           // SMTP password
                    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
                    $mail->Port = SMTP_PORT;                                    // TCP port to connect to
                    //Recipients
                    $mail->setFrom(SMTP_UNAME, "Tên người gửi");
                    $mail->addAddress($_POST['email'], 'Tên người nhận');     // Add a recipient | name is option
                    $mail->addReplyTo(SMTP_UNAME, 'Tên người trả lời');
//                    $mail->addCC('CCemail@gmail.com');
//                    $mail->addBCC('BCCemail@gmail.com');
                    $mail->isHTML(true);                                  // Set email format to HTML
                    $mail->Subject = $_POST['title'];
                    $mail->Body = $_POST['content'];
                    $mail->AltBody = $_POST['content']; //None HTML
                    $result = $mail->send();
                    if (!$result) {
                        $error = "Có lỗi xảy ra trong quá trình gửi mail";
                    }
                } catch (Exception $e) {
                    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
                }
            }
            ?>
            <div class = "container">
                <div class = "error"><?= isset($error) ? $error : "Gửi email thành công" ?></div>
                <a href = "index.php">Quay lại form gửi mail</a>
            </div>
        <?php } else {
            ?>
                 <?php
        // require_once ('../../../../../admin/dao/pdo.php');
        require_once ('../../../../../admin/dao/hoa-don.php');
        // require_once ('../../../../../admin/dao/khach-hang.php');
        extract($_REQUEST);
        $items = hoa_don_chi_tiet_select_by_id_ma_kh($ma_hd);
        $Total = 0;
        ?>
         <?php foreach($items as $item){ 
                    extract($item);  
                                     
                                    ?> 
<div id="page-wrapper">
		  <div class="header"> 
                        <div class="page-header">
                <form id="send-email-form" method="POST" action="?action=send" enctype="multipart/form-data">
                    <label>Gửi đến email: </label>
                    <input type="text" class="form-control" name="email" value="<?=$email?>" readonly><br/>
                    <label>Tiêu đề: </label>
                    <input type="text" class="form-control" name="title" value="" /><br/>
                    <label>Nội dung: </label>
                    <textarea name="content" class="form-control" id="noi-dung"></textarea><br/>
                    <script>
                        CKEDITOR.replace( 'noi-dung' );
                </script> 
                    <input type="submit" class="btn btn-danger" value="Send Email">
                    
                </form>
            </div>
            <?php break; } ?>
            
<?php } ?>
</div>
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
<script src="../../../../../css/admin/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="../../../../../css/admin/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../../../../../css/admin/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="../../../../../css/admin/js/custom-scripts.js"></script>
    
   
</body>
</html>
