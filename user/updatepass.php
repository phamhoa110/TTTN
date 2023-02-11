<?php
//  && isset($_SESSION['pass'])
session_start();
include('config.php');
if (isset($_POST['update']) && isset($_SESSION['pass'])) {
  $un = $_SESSION['pass'];
  $pass = $_POST['password'];
  $repass = $_POST['repassword'];
  if($pass!=$repass){
    echo '<script>alert("Mật khẩu không đúng")</script>';
    echo "<script>window.location.href='getpassword.php';</script>";
    die();
  }
  else if(empty($_POST['password']) || empty($_POST['repassword'])){
    echo '<script>alert("Vui lòng nhập đầy đủ thông tin")</script>';
    echo "<script>window.location.href='getpassword.php';</script>";
    die();
  }
  else{
    $matkhau = md5($pass);
    $sql = "UPDATE user SET password = '$matkhau' WHERE username = '$un'";
  mysqli_query($conn, $sql);
    echo '<script>alert("Đổi mật khẩu thành công")</script>';
    echo "<script>window.location.href='login.php';</script>";
    unset($_SESSION['pass']);
  }
  
}
?>