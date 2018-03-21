<?php require_once('conn/connect.php') ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Buscador</title>
	<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
	<link rel="stylesheet" href="css/estilos.css">
</head>
	<body>
		<div class="container">
			<div class="center" id="logo"><h2>Gobierno Regional de Los Ríos</h2>
				<br>
				<br><br><h2>Ingrese Nombre o Apellido para la busqueda</h2><br><br>
			</div>
			<div class="form center">
				<form action="" method="post" name="search_form" id="search_form">
					<input type="text" name="search" id="search">
				</form>
			</div>
			<div id="resultados"></div>
			<div class="footer center">
				2015 - Gobierno Regional de Los Ríos <br>
				<a href="https://www.goredelosrios.cl">www.goredelosrios.cl</a>
			</div>
		</div>
	</body>
</html>
