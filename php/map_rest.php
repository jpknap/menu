<?php
	error_reporting(E_ALL);
	ini_set('display_error','1'); //notifica todos los errores de php
	include "../../conexion.php";	
	mysql_query('SET CHARACTER SET utf8'); //obliga a los datos traidos de mysql que sean en utf 8

	/*$consulta= "SELECT latitud, longitud , nombre from restorant where 1";

	$query = mysql_query($consulta,$conexion) or die ("consulta fallida".mysql_error());;
	//$datos = mysql_fetch_array($query) 
	$data = array();
		// fetch assoc, nombre asociativo de a columna con la data
	while($fila = mysql_fetch_assoc($query)){
		array_push($data,$fila);
	} */
	
$data = array("contacto1"=>array("nombre" => "jhon die" , "fono" => "232424" , "correo" => "jsabjs@gmail.com"), 
					"contacto2"=>array("nombre" => "j2h2o2n die" , "fono" => "23222424" , "correo" => "j222sabjs@gmail.com"),
					"contacto3"=>array("nombre" => "jho333n die" , "fono" => "23233324" , "correo" => "js3333s@gmail.com"));

	header("Cache-Control: no-cache , must -revalidate"); // no guarde cache
	header("Exipres: Sat 26 jul 1997 05:00:00 GMT");	// dice que esta expirado, obligamos al navegador a refrecar la info
	Header("Content-type: application/json");
	echo json_encode($data);

?>