<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Application de recherche de film</title>
	<link rel="stylesheet" type="text/css" href="Spectacus.css">	
</head>

<body>
	<div>
		<form method="get" action=""> 
		<div class="recherche">
			<fieldset><legend>Critères de rechere :</legend>
				<label>Entrez le nom du film cherché</label>
				<input type="search" name="titre" placeholder="Recherche"><br>
				
				<label>*Son titre original :</label>
				<input type="text" name="title"><br>

			<label>*Le thème du film :</label>
				<select name="theme">
					<option value=""></option>
					<option value="Animaux">Animaux</option>
					<option value="Arts">Arts</option>
					<option value="Chefsdoeuvre">Chefs-doeuvre (par genre)</option>
					<option value="Cinémas nationaux">Cinémas nationaux</option>
					<option value="Constructions">Constructions</option>
					<option value="Distractions">Distractions</option>
					<option value="Divers">Divers</option>
					<option value="Diverses communautés">Diverses communautés</option>
					<option value="Ecrivains">Ecrivains</option>
					<option value="Fantastique/Science-fiction">Fantastique/Science-fiction</option>
					<option value="Genres cinématographiques">Genres cinématographiques</option>
					<option value="Guerres">Guerres</option>
					<option value="Histoire">Histoire</option>
					<option value="Lieux géographiques">Lieux géographiques</option>
					<option value="Lois et déviances">Lois et déviances</option>
					<option value="Milieu médical">Milieu médical</option>
					<option value="Milieux socio-professionnels">Milieux socio-professionnels</option>
					<option value="Moyens de communication">Moyens de communication</option>
					<option value="Moyens de transport">Moyens de transport</option>
					<option value="Nature">Nature</option>
					<option value="Personnages célèbres">Personnages célèbres</option>
					<option value="Prix cinématographiques">Prix cinématographiques</option>
					<option value="Problèmes de société">Problèmes de société</option>
					<option value="Professions">Professions</option>
					<option value="Religions">Religions</option>
					<option value="Scénaristes célèbres">Scénaristes célèbres</option>
					<option value="Séries">Séries</option>
					<option value="Sports">Sports</option>
				</select><br>

				<label>*La catégorie du film :</label>
				<select name="categorie">
					<option value=""></option>
					<option value="Thriller">Thriller</option>
					<option value="Guerre">Guerre</option>
					<option value="Romance">Romance</option>
					<option value="Aventure">Aventure</option>
					<option value="Action">Action</option>
					<option value="Horreur">Horreur</option>
					<option value="Documentaire">Documentaire</option>
					<option value="Policier"> Policier</option>
					<option value="ScienceFiction"> Science-Fiction</option>
				</select>	<br>

				<label for="compositeur">*Compositeur musical</label>
				<input type="text" name="compositeur"><br>

				<LABEL for="anneeProd">*Année de production  :</LABEL>
				<input type="number" name="anneeProd" min="1900" max="2017"><br>
				<LABEL for="anneeParu">*Année de parution  :</LABEL>
				<input type="number" name="anneeParu" min="1900" max="2017"><br>

				<button type="submit" name="btn" value="submit">Valider</button>	
				<!-- <?php
					 $req = "select theme from titre";
					 $res = execReq($req);
					foreach ($res as $ligne) { 
						echo "<option value='".$ligne['theme']."'></option>";
					} 
					?> -->
				</select></form><br>
		<br><br>* : Ces champs ne sont pas obligatoires. 
			</fieldset>
		</div>
			
		</form>
	<div>



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
		//return $result;
	}





function listerTitres($req) {
		require_once "connectBase.php";
		
		if (($cnx = connectionBDD()) === false) exit;
		
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