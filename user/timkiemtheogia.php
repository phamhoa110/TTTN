<?php
	include("config.php");
    include("header1.php");
	$start = $_GET['start'];
    $end = $_GET['end'];
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        
        if($end == 0){
            $sql_pro = "select * from sanpham where DonGia >= '$start' and MaDM = '$id' and TrangThai =  '1'";
        } else{
            $sql_pro = "select * from sanpham where DonGia >= '$start' and DonGia < '$end' and MaDM = '$id' and TrangThai =  '1'";
        }
        
        $query_pro = mysqli_query($conn, $sql_pro);
    } else if (isset($_GET['search']) && !empty($_GET['search'])) {

		$key = $_GET['search'];

		if($end == 0){
            $sql_pro = "SELECT * from sanpham WHERE UPPER(TenSP) LIKE UPPER('%$key%') and  DonGia >= '$start' and TrangThai =  '1'";
        } else{
            $sql_pro = "SELECT * from sanpham WHERE UPPER(TenSP) LIKE UPPER('%$key%') and  DonGia >= '$start' and DonGia < '$end' and TrangThai =  '1'";
        }
		
		$query_pro = mysqli_query($conn, $sql_pro);
	} else{
		
        if($end == 0){
            $sql_pro = "select * from sanpham where DonGia >= '$start' and TrangThai =  '1'";
        } else{
            $sql_pro = "select * from sanpham where DonGia >= '$start' and DonGia < '$end' and TrangThai =  '1'";
        }
		$query_pro = mysqli_query($conn, $sql_pro);
	}

	
?>

<body class="tg-home tg-homeone">
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<!--************************************
				Inner Banner Start
		*************************************-->
		
		<section class="tg-sectionspace tg-haslayout">
			<div class="container">
				<div class="row">
<div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">

	<div id="tg-content" class="tg-content">

		<div class="tg-products">
			
			<div class="tg-sectionhead">
				<h2><span>Tất cả sản phẩm</span>
					
				</h2>
			</div>

			<div class="tg-productgrid">
				<?php
				while ($row = mysqli_fetch_array($query_pro)) {
				?>
					<div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
						<div class="tg-postbook">
							<form action="themgiohang.php" method="POST">
								<figure class="tg-featureimg">
									<div class="tg-bookimg">
										<div class="tg-frontcover"><img src="images\books\<?php echo $row['Anh'] ?>" alt="image description"></div>
										<div class="tg-backcover"><img src="images\books\<?php echo $row['Anh'] ?>" alt="image description"></div>
									</div>

								</figure>
								<div class="tg-postbookcontent">
									<ul class="tg-bookscategories">
										<li></li>
									</ul>
									<div class="tg-booktitle">
										<h3><a href="productdetail.php?MaSP=<?php echo $row['MaSP'] ?>"><?php echo $row['TenSP'] ?> </a></h3>
									</div>
									<span class="tg-bookwriter">Giá : <a href="javascript:void(0);"> <?php echo $row['DonGia'] ?></a></span>
									
									<input type="hidden" name="MaSP" value="<?= $row['MaSP'] ?>">
									<a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
										<button type="submit" class="themgiosach" name="themgiosach"><i class="fa fa-shopping-basket"></i>
											<em>Thêm vào giỏ</em></button>
									</a>
								</div>
							</form>
						</div>
					</div>
				<?php 
			} 
			?>
			</div>
		</div>
	</div>
</div>
</div>
	</div>
	</section>
</div>
</body>
<?php
	include("footer.php");
?>