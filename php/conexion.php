<?php

$conexion = mysql_connect("localhost","root","") or die(mysql_error()) ;
$db = mysql_select_db("crestacl_menu",$conexion) or die(mysql_error());

?>