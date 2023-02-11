<?php
session_start();
include('config.php');
if (isset($_SESSION['dangnhap']) && isset($_POST['capnhat'])) {
  $id = $_SESSION['userid'];
  $passcu = $_POST['passcu'];
  $passmoi = $_POST['password'];
  $xacnhanpass = $_POST['repassword'];
  $p=md5($passmoi);
//   $matkhau = md5($matkhau);
  $sql = "SELECT * FROM user WHERE id = '$id'";
  $row = mysqli_query($conn, $sql);
  $r=mysqli_fetch_array($row);
  //$_SESSION['userid']=$r['id'];
  if(empty($passcu) || empty($passmoi) || empty($xacnhanpass)){
        echo '<script>alert("Vui lòng nhập đầy đủ thông tin")</script>';
        echo "<script>window.location.href='doimatkhau.php';</script>";
        die();
  }
  if (md5($passcu) != $r['password']) {
    echo '<script>alert("Mật khẩu hiện tại không đúng")</script>';
    echo "<script>window.location.href='doimatkhau.php';</script>";
    die();
  } 
  if($passmoi!=$xacnhanpass){
    echo '<script>alert("Xác nhận mật khẩu không đúng")</script>';
    echo "<script>window.location.href='doimatkhau.php';</script>";
    die();
  }
  else {
    $sql= "UPDATE user SET password = '$p' WHERE id = '$id'";
    mysqli_query($conn,$sql);
    echo '<script>alert("Đổi mật khẩu thành công")</script>';
    echo "<script>window.location.href='index.php';</script>";
    unset($_SESSION['dangnhap']);
  }
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

<h5 class="indigo-text">Đổi mật khẩu</h5>
<div class="section"></div>

<div class="container">
  <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

    <form autocomplete="off" class="col s12" method="POST">
      <div class='row'>
        <div class='col s12'>
        </div>
      </div>
      <div class='row'>
              <div class='input-field col s12'>
                <input class='validate' type='password' name='passcu' require/>
                <label for='repassword'>Mật khẩu hiện tại</label>
              </div>
            </div>

      <div class='row'>
              <div class='input-field col s12'>
                <input class='validate' type='password' name='password' require/>
                <label for='password'>Mật khẩu mới</label>
              </div>
            </div>

            <div class='row'>
              <div class='input-field col s12'>
                <input class='validate' type='password' name='repassword' require/>
                <label for='repassword'>Xác nhận mật khẩu mới</label>
              </div>
            </div>

      <br />
      <center>
        <div class='row'>
          <button type='submit' name='capnhat' class='col s12 btn btn-large waves-effect indigo'>Cập nhật</button>
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