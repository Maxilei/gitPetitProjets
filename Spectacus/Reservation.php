<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="Spectacus.css">	
</head>

<body>
	<fieldset>
	<label for="titre">Quel film reservez-vous :</label>
		<form action="" method="get"><select name="idTitre">
			<?php
				$req = "select idTitre, libTitre from titre";
				$res = execReq($req);
				foreach ($res as $ligne) { 
				echo "<option value='".$ligne['idTitre']."'>".$ligne['libTitre']."</option>";
			} 
			?>
		</select></form><br>
	<label for="dateEmprunt">A partir de quand ?</label>
	<input type="date" name="dateEmprunt" value="dateEmprunt">
	<label for="dateRetour">Pendant combien de temps ?</label>
	<input type="" name="dateRetour" value="dateRetour">
	</fieldset>
</body>
</html>
<?php
	function execReq($req) {
		require_once "connectBase.php";
		
		if (($cnx = connectionBDD()) === false) exit;
			
		#VALUES ('$this->titre', '$this->an', '$this->title');";
			
		$result = $cnx->query($req); 
		//or die("La requête \"$req\" a échoué : ".$cnx->error);
		// on ferme la connexion
		mysqli_close($cnx);
		return $result;
	}
?>