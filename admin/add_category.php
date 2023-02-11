<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Thêm danh mục</title>
  
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap 
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css"-->
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
<style type="text/css">
  .container{
    width: 50%;
  }
  input{
    width: 20%;
  }
</style>
</head>
<body>
  <div class="wrapper">
      <!-- Preloader-->
      <!--div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="dist/img/logo.png" alt="Logo" height="60" width="60">
      </div-->
      <?php 
      require 'configQLNT.php';

        $tenDM="";
        
       
        //Lấy giá trị POST từ form vừa submit
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if(isset($_POST["name"])) {
              $tenDM = $_POST['name'];
            }
            if($_POST['name']=='' ){
            echo '<script>alert("Vui lòng nhập đầy đủ thông tin")</script>';
            echo "<script>window.location.href='add_category.php';</script>";
            die();
          }
            //Code xử lý, insert dữ liệu vào table
            $sql = "INSERT INTO danhmuc (TenDM) VALUES ('$tenDM')";
              
            if (mysqli_query($conn, $sql)) {
                echo "Thêm dữ liệu thành công";
                header('location: manage_category.php');                
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            
          }   

       ?>


      <?php include "include/header.php"; ?>
      <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Thêm thông tin danh mục mới</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"></a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
      <section class="content mb-2">
      <div class="container">
        <form class="mt-3" method="POST" action="" enctype="multipart/form-data">
          <label class="mt-3">Mã danh mục</label>
          <input class="form-control" name="category" readonly>

          <label class="mt-3">Tên danh mục</label>
          <input class="form-control" name="name">

          <input type="submit" class="btn btn-small btn-primary mt-3" name="btnSubmit" value="Thêm mới">
        </form>
      </div>
      </section>
    
</div>
<?php include 'include/footer.php'; ?>

<script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

    <script src="dist/js/adminlte.js"></script>
</body>
</html>
