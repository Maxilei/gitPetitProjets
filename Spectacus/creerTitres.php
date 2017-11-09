<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="slam.css">
	<title>Gestion des titres</title>
	<style>
		label {
		    display: initial;
		    width: initial;
		    text-align: left;
		    box-sizing: border-box;
		}
		pre {display : inline;}
		.size3b { width:40%; height: 35%; }			
	</style>
</head>
<body class="bg5">
	<div class="topLeft sizeBandeau1 border2 bg1 box2 centrage"> 
		<h2>Création de titre</h2>
	</div>
	<div class="centreRight size3a border2 bg1 box2">
		<form action="" method="get">
			<fieldset><legend>Gestion des titres</legend>
				<LABEL for="titre"><pre>titre	:</pre></LABEL>
				<input type="text" name="titre" autofocus required size="40"><br>
				<LABEL for="title"><pre>Title	:</pre></LABEL>
				<input type="text" name="title" size="40"><br>
				<LABEL for="an"><pre>Année	:</pre></LABEL>
				<input type="number" name="an" min="1900" max="2017" required> 
				<button class="bordure1 btn alignR" type="submit" name="btn" value="Submit">Envoyez votre requête</button>
			</fieldset>
		</form>	
	</div>


<?php
class titre {
	private $titre;
	private $title;
	private $an;
	
	public function titre($Titre=null, $An=null, $Title=null) {
		$this->titre = $Titre;
		$this->title = $Title;
		$this->an = $An;
	} 
	public function getTitre() {
		return $this->titre;
	}
	public function setTitre($Titre) {
		$this->titre = $Titre;
	}
	public function getTitle() {
		return $this->title;
	}
	public function setTitle($Title) {
		$this->title = $Title;
	}
	public function getAn() {
		return $this->an;
	}
	public function setAn($An) {
		$this->an = $An;
	}	
	public function toString() {
		return $this->titre."(".$this->an.")";
	}
	public function toBase() {
		require_once "connectBase.php";

		if (($cnx = connectionBDD()) === false) exit;
			
		$req = "INSERT INTO `titre`(`libTitre`, `anParution`, `title`) 
		VALUES ('$this->titre', '$this->an', '$this->title');";
			
		$result = $cnx->query($req) or die("La requête \"$req\" a échoué : ".$cnx->error);	
		
		// on ferme la connexion
		mysqli_close($cnx);
	}
}
	
	if(!isset($_REQUEST['btn'])) exit;

	echo "<div class=\"centreLeft box1 border2 size4a bg1 border2 overAuto\">";	

	// récupération des données du formulaire
	$titre = $_REQUEST["titre"];
	if(isset($_REQUEST["title"]))
		$title = $_REQUEST["title"];
	else
		$title ="";
	$an = $_REQUEST["an"];
	
	// création de l'objet
	$Titre = new titre($titre, $an, $title);
	
	// enregistrement
	$Titre->toBase();
	
	echo "enregistrement du titre :".$Titre->toString();
	echo "</div>";
	
?>
</body>
</html>




