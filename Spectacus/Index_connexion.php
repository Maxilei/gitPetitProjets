<?php include 'ConnectBase.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8_bin">
	<link rel="stylesheet" type="text/css" href="Cafetariat.css">
	<title>Accueil du site</title>
	<style>
	</style> 
</head>
<body>

<div class="Bandeau_accueil">
	<h2>Accueil du site</h2>
</div>

<?php
#var_dump($_SESSION);
#$_SESSION['username']="maximei";

	if (isset($_SESSION['username'])) {
		echo "Bonjour ".$_SESSION['username']." ! ";
		echo "<br><a href=\"Deconnexion.php\">Déconnexion</a>";
	}
	else{
		echo "Bienvenue sur notre site!";
		echo "<br><a href=\"Sign_up.php\">Sign Up</a>";
		echo "<br><a href=\"Connexion.php\">Connexion</a>";
	}
?>

</body>
</html>