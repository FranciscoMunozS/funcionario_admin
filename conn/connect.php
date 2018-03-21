<?php
	$host = "localhost";
	$user = "root";
	$pass = "Gore2016";
	$db = "ci_deploy";

	$connect = new mysqli($host,$user,$pass,$db) or die("error" . mysqli_errno($connect));
?>
