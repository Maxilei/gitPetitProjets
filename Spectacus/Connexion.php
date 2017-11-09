<?php include 'ConnectBase.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="">
	<style>
	</style> 

</head>
<body>

	<form method="get" action="Connexion.php">
		<div>
			<fieldset><legend>Connexion :</legend>
				<label for="username">Identifiant</label><input type="text" name="username"><br>
				<label for="password">Mot de passe</label><input type="password" name="password" required=""><br>
				<button type="submit" name="btn">Valider</button><br>
				<a href="Spectacus.php">Retour</a>
			</fieldset>
		</div>
	</form>
</body>

<?php
	if (isset($_REQUEST['btn'])) 
	{
		$username=$cnx->escape_string($_REQUEST['username']);
		$password=$_REQUEST['password'];


		// $_SESSION['username']=$_GET['username'];
		// $_SESSION['password']=$_GET['password'];

		$result=$cnx->query ('SELECT nomUser,password,IdUser,admin from User where nomUser="'.$username.'"');
		echo 'SELECT password,IdUser,admin from User where nomUser="'.$username.'"';
		if ($result==false OR $result->num_rows<1 ) 
		{
			$form=true;
			$message='Utilisateur inconnu';
		}
		else 
		{
			$ligne = $result->fetch_array();
		
			if ($ligne['password']==$password) {
				$form=false;
				$_SESSION['username']=$_REQUEST['username'];
				$_SESSION['userId']=$ligne['IdUser'];
				if ($_SESSION['admin']==1) 
					$_SESSION['admin']= true;
					
			echo "<div> Vous êtes connecté </div>";
			}	
			else 
			{
			$form=true;
			$message='Identifiant non reconnus';		
			}
		}

		$form= false;
	}echo $message;
echo $result;

// $username=$_GET['username'];
// $password=$_GET['password'];


?>

</html>