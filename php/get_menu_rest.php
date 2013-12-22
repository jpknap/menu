<?php
	error_reporting(E_ALL);
	ini_set('display_error','1'); //notifica todos los errores de php
	include "../../conexion.php";	
	mysql_query('SET CHARACTER SET utf8'); //obliga a los datos traidos de mysql que sean en utf 8

	$latitud=$_GET['latitud'];
	$longitud=$_GET['longitud'];

	$consulta= "SELECT producto , precio , descripcion FROM menu WHERE latitud='$latitud' and longitud='$longitud'";

	$query = mysql_query($consulta,$conexion) or die ("consulta fallida".mysql_error());
	//$datos = mysql_fetch_array($query) 
	$data = array();
		// fetch assoc, nombre asociativo de a columna con la data
	while($fila = mysql_fetch_assoc($query)){
		array_push($data,$fila);
	}

	header("Cache-Control: no-cache , must -revalidate"); // no guarde cache
	header("Exipres: Sat 26 jul 1997 05:00:00 GMT");	// dice que esta expirado, obligamos al navegador a refrecar la info
	Header("Content-type: application/json");
	echo json_encode($data);

?>