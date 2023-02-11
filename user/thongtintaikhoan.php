<?php
session_start();
include('config.php');
if (isset($_SESSION['dangnhap'])) {

$iduser = $_SESSION['userid'];

  $sql = "SELECT * FROM user WHERE id= '$iduser'";
  $row = mysqli_query($conn, $sql);
  $r=mysqli_fetch_array($row);

}
?>


<html>

<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
  <style>
    body {
      display: flex;
      min-height: 100vh;
      flex-direction: column;
    }

    main {
      flex: 1 0 auto;
    }

    body {
      background: #fff;
    }

    .indigo-text {
      color: #10b571 !important;
    }

    .indigo {
      background-color: #17c77e !important;
    }

    .input-field input[type=date]:focus+label,
    .input-field input[type=text]:focus+label,
    .input-field input[type=email]:focus+label,
    .input-field input[type=password]:focus+label {
      color: #17c77e;
    }

    .input-field input[type=date]:focus,
    .input-field input[type=text]:focus,
    .input-field input[type=email]:focus,
    .input-field input[type=password]:focus {
      border-bottom: 2px solid #17c77e;
      box-shadow: none;
    }
  </style>
</head>

<body>
  <main>
    <center>
    <div class="section"></div>

<h5 class="indigo-text">Thông tin tài khoản</h5>
<div class="section"></div>

<div class="container">
  <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

    <form action="updatepass.php" autocomplete="off" class="col s12" method="POST">
      <div class='row'>
        <div class='col s12'>
        </div>
      </div>

      <div class='row'>
        <div class='input-field col s12'>
        <label>Họ và tên</label>
          <input class='validate' type='text' name="fullname" readonly value="<?=$r['username']?>" />
          
        </div>
      </div>
      <div class='row'>
        <div class='input-field col s12'>
        <label>Ngày sinh</label>
          <input class='validate' type='text' name="dateofbirth" readonly value="<?=$r['dateofbirth']?>" />
          
        </div>
      </div>
      <div class='row'>
        <div class='input-field col s12'>
        <label>Giới tính</label>
          <input class='validate' type='text' name="sex" readonly value="<?=$r['sex']?>" />
          
        </div>
      </div>
      <div class='row'>
        <div class='input-field col s12'>
        <label>Email</label>
          <input class='validate' type='text' name="email" readonly value="<?=$r['email']?>" />
          
        </div>
      </div>
      <div class='row'>
        <div class='input-field col s12'>
        <label>Số điện thoại</label>
          <input class='validate' type='text' name="phonenumber" readonly value="<?=$r['phonenumber']?>" />
          
        </div>
      </div>
      

      <br />
      <center>
        <div class='row'>
          <a href="doimatkhau.php"><button type='button' name='doipass' class='col s12 btn btn-large waves-effect indigo'>Đổi mật khẩu</button></a>
        </div>
        <div class='row'>
          <a href="index1.php"><button type='button' class='col s12 btn btn-large waves-effect indigo'>Quay lại</button></a>
        </div>
      </center>
    </form>
  </div>
</div>
    </center>

    <div class="section"></div>
    <div class="section"></div>
  </main>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>

</html>