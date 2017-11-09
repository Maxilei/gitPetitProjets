<?php include 'ConnectBase.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="">
	<style>
	</style> 

</head>
<body>
	<form method="get" action="Spectacus.php">
	<a href="Spectacus.php">Retour</a>
	</form>
</body>

<?php
if (isset($_SESSION['username'])) {
	unset($_SESSION['username']);
	echo "Vous venez d'être déconnecté.";
}

if (isset($_REQUEST['btn'])) {
$_SESSION['username']="SIO1";
$_SESSION['userid']="999";
$form= false;
	}

$username=$_GET['username'];
$password=$_GET['password'];


?>

</html>