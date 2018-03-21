<?php
	require_once('../conn/connect.php');
	sleep(1);
	$search = '';
	if (isset($_POST['search'])){
		$search = strtolower($_POST['search']);
	}
	$consulta = "SELECT * FROM employee WHERE nombre LIKE '%".$search."%'";
	$resultado = $connect->query($consulta);
	$fila = mysqli_fetch_assoc($resultado);
	$total = mysqli_num_rows($resultado);
?>
<?php if ($total>0 && $search!='') { ?>
	<h2>Resultados de la búsqueda</h2>
	<?php do { ?>
		<div class="art">
			<img src="<?php echo $fila['file']?> " /></br>
			<span class="titulo"><?php echo str_replace($search, '<strong>'.$search.'</strong>', utf8_encode($fila['nombre'])) ?></span><br/>
			<span class="contenido">División: <?php echo str_replace($search, '<strong>'.$search.'</strong>',utf8_encode($fila['division'])) ?></span><br/>
			<span class="contenido">Unidad: <?php echo str_replace($search, '<strong>'.$search.'</strong>', utf8_encode($fila['unidad'])) ?></span><br/>
			<span class="contenido">Correo Electronico: <?php echo str_replace($search, '<strong>'.$search.'</strong>', utf8_encode($fila['email'])) ?></span><br/>
			<span class="contenido">Telefono: <?php echo str_replace($search, '<strong>'.$search.'</strong>', utf8_encode($fila['fono'])) ?></span><br/>
	</tr>
		</div>
	<?php } while ($fila=mysqli_fetch_assoc($resultado)); ?>
<?php }
elseif($total>0 && $search=='') echo '<h2>Ingresa un parámetro de búsqueda</h2><p>Ingresa palabras clave relacionadas con el tema de esta web</p>';
else echo '<h2>No se han encontrado resultados</h2><p>Inténta realizar tu búsqueda con palabras más especificas...</p>';
?>
