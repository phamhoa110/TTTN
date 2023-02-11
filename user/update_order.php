<?php
	include_once('config.php');
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$sql = "UPDATE tblorder SET status=2 WHERE id = '$id'";
		mysqli_query($conn,$sql);
		mysqli_close($conn);
		header("Location:danhsachdh.php");
	}
?>