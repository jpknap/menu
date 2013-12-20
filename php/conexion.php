<?php

$conexion = mysql_connect("localhost","root","") or die(mysql_error()) ;
$db = mysql_select_db("practica",$conexion) or die(mysql_error());

?>