<?php include 'ConnectBase.php'; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8_bin">
	<title>Application de recherche de films</title>
	<link rel="stylesheet" type="text/css" href="Spectacus.css">	
</head>

<body>
	<div>
		<form method="get" action=""> 
		<div class="recherche">
			<fieldset>
				<h2 class="titre">Quel film cherchez vous ?</h2><br>
				<input  class="Bouton_recherche" type="search" name="titre" placeholder="Recherche">
				<h3>Quel tranche d'année ?</h3>
				<br>
				<LABEL for="an1"><pre>Année de   :</pre></LABEL>
				<input type="number" name="an1" min="1900" max="2017">
				<LABEL for="an2"><pre>Année à    :</pre></LABEL>
				<input type="number" name="an2" min="1900" max="2017"><br>
				<!--//<legend>Entrez le nom du livre cherché</legend>-->

				<button class="valider" type="submit" name="validation">Go!</button>	
			
				<?php include 'Index_connexion.php'; ?>
			</fieldset>
		</div>
	<pre>
<?php
function listerTitres($req) {
			
		$result = $cnx->query($req) or die("La requête \"$req\" a échoué : ".$cnx->error);	
		if($result->num_rows<1) die("La requête \"$req\" ne renvoie aucun résultat");
	
		// affichage en-tête
		echo "<table><tr>";
		$data = $result->fetch_array(MYSQLI_ASSOC);
		foreach ($data as $key => $value) 
			{  echo '<td><strong>'.$key.'</strong></td>';}
		echo '</tr>';
		$result->data_seek(0);
	
		
		while ($data = $result->fetch_array(MYSQLI_ASSOC)) {
			echo "<tr>";
			foreach($data as $key=>$valeur) {
				echo "<td>$valeur </td>";
			}
			echo "</tr>";
		}
		echo "</table>";
				
		// on ferme la connexion
		mysqli_close($cnx);
	}

	
	if(!isset($_REQUEST['btn'])) exit;

	echo "<div class=\"centreLeft box1 border2 size4a bg1 border2 overAuto\">";	

	// récupération des données du formulaire
	$titre = $_REQUEST["titre"];
	if(isset($_REQUEST["title"]))
		$title = $_REQUEST["title"];
	else
		$title ="";
	if(isset($_REQUEST["an1"]))
		$an1 = $_REQUEST["an1"];
	else $an1="";
	if(isset($_REQUEST["an2"]))
		$an2 = $_REQUEST["an2"];		
	else $an2="";
	
	$req = "select * from titre where libTitre LIKE \"%$titre%\" "; 
	if (isset($title) && strlen($title)>0)
		$req .= " AND title LIKE \"%$title%\" "; 
	if (isset($an1,$an2) && strlen($an1)>0 && strlen($an2)>0)
		$req .= " AND anParution BETWEEN \"$an1\" AND \"$an2\" ";
	
	// lecture
	listerTitres($req);
	
	echo "</div>";
?>
	</pre>
		</form>
	</div>



</body>
</html>


