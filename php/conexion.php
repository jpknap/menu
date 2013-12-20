<?php

$conexion = mysql_connect("localhost","root","localhost") or die(mysql_error()) ;
$db = mysql_select_db("crestacl_menu",$conexion) or die(mysql_error());

?>