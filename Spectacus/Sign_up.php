<?php include 'ConnectBase.php';?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="slam.css">
	<style>
	</style> 

</head>
<body>
<?php 

if (isset($_SESSION['username'])) {
	unset($_SESSION['username']);
	echo "Vous venez d'être déconnecté.";
}
else{
	echo "Vous pouvez vous inscrire";
}
?>


<form method="GET" action="Sign_up.php">
	<div>
		<fieldset><legend>Inscription</legend>
			<label for="username">Identifiant</label><input type="text" name="username" required><br>
			<label for="mail">Adresse mail</label><input type="email" name="mail" required><br><br>
			<label for="password">Mot de passe</label><input type="password" name="password" required><br><br>
			<label for="verif_password"> Vérification du Mot de passe</label><input type="password" name="verif_password" required><br>
			<button type="submit" name="btn">Valider</button>
			<a href="Spectacus.php">Retour</a>
		</fieldset>
	</div>
</form>

<?php
	$pass=$_GET['password'];
	$verif_password=$_GET['verif_password'];

	function execReq($req) {
		global $cnx;
		
		$result = $cnx->query($req); 
		//or die("La requête \"$req\" a échoué : ".$cnx->error);
		// on ferme la connexion
		mysqli_close($cnx);
		// return $result;
		
	}

if ($pass==$verif_password){
	if (isset($_REQUEST['btn']))
	 {
		$_SESSION['username']=$_GET['username'];
		$_SESSION['password']=$_GET['password'];
		$_SESSION['mail']=$_GET['mail'];
		
	$req="INSERT INTO `User`.`User` (`nomUser`, `password`, `email`) VALUES ("."'".$_SESSION['username']."'".","."'".$_SESSION['password']."'".","."'".$_SESSION['mail']."'".")";

	execReq($req);
	}
}
else
{
	echo "Mots de passe différents. <br>Votre compte n'as pas été créé.";
}



?>
</body>
</html>