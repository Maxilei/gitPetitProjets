<?php 

session_start();

if (!($cnx = mysqli_connect("localhost","root","passf203","spectacus"))) {
	echo ("Connexion impossible".$cnx->connect_error());
	return false;	
}

$cnx->query("set names utf8");

$url_home = "Index_connexion.php";


 ?>