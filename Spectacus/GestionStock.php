<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="slam.css">
	<title>Gestion des stocks</title>
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
			<h2>Gestion des stocks</h2>
		</div>
		<div class="centreRight size3a border2 bg1 box2">
			<form action="GestionStock.php" method="get">
				<fieldset><legend>Gérer un stock</legend>
				<form action="" method="get"><select name="idTitre">
					<?php
					 $req = "select idTitre, libTitre from titre";
					 $res = execReq($req);
					foreach ($res as $ligne) { 
						echo "<option value='".$ligne['idTitre']."'>".$ligne['libTitre']."</option>";
					} 
					?>
				</select></form><br>
					<br>
					<!-- <LABEL for="an"><pre>Année   :</pre></LABEL>
					<input type="number" name="an" min="1900" max="2017" required > <br> -->
					<LABEL for="stock"><pre>Quantité Max  :</pre></LABEL>
					<input type="number" name="stock" min="0" max="999" #required#><br>
					<LABEL for="dispo"><pre>Quantité Dispo:</pre></LABEL>
					<input type="number" name="dispo" min="0" max="999"><br>
					<LABEL for="format"><pre>Format:</LABEL>
					<input class="radio" type="radio" name="format" value="DVD"><label>DVD</label>
					<input class="radio" type="radio" name="format" value="Blu-Ray"><label>Blu-Ray</label>
					<input class="radio" type="radio" name="format" value="K7"><label>Cassette</label>
					<input class="radio" type="radio" name="format" value="CD-ROM"><label>CD-ROM</label>
					<button class="bordure1 btn alignR" type="submit" name="btn" value="Submit">Envoyez votre requête</button>
				</fieldset>
			</form>	
		</div>


	<?php


	class stock {
		private $Format;
		private $Stock;
		private $Dispo;
		private $idTitre;
		
		public function stock($idTitre=null, $Format=null, $Stock=null, $Dispo=null) {
			$this->idTitre = $idTitre;
			$this->format = $Format;
			$this->stock = $Stock;
			$this->dispo = $Dispo;
		} 
		public function getFormat() {
			return $this->format;
		}
		public function setformat($Format) {
			$this->format= $Format;
		}
		public function getStock() {
			return $this->stock;
		}
		public function setstock($Stock) {
			$this->stock = $Stock;
		}
		public function getDispo() {
			return $this->dispo;
		}
		public function setDispo($Dispo) {
			$this->dispo= $Dispo;
		}	
		public function getidTitre(){
			return $this->idTitre;
		}
		public function setidTitre($idTitre){
			$this->$idTitre;
		}
		public function toString() {
	 		return $this->format."(".$this->stock.")";
		}
		function toBase() {
			require_once "connectBase.php";
			
			if (($cnx = connectionBDD()) === false) exit;
				
			//$req = "INSERT INTO `titre`(`libTitre`, `anParution`, `title`) 
			$req = "INSERT INTO stock (idTitre,format,stock,dispo) 
			VALUES ('$this->idTitre','$this->format', '$this->stock', '$this->dispo');";
	print_r($req);		
			$result = $cnx->query($req) or die($ligne["idTitre"]."La requête \"$req\" a échoué : ".$cnx->error);	
			
			// on ferme la connexion
			mysqli_close($cnx);
		}
	}

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

		if(!isset($_REQUEST['btn'])) exit;
		echo "<div class=\"centreLeft box1 border2 size4a bg1 border2 overAuto\">";	

		// récupération des données du formulaire
		$idTitre=$_REQUEST['idTitre'];
		$Format=$_REQUEST['format'];
		$StockTotal=$_REQUEST['stock'];
		$Dispo=$_REQUEST['dispo'];
		
		// création de l'objet
		$Stock = new stock($idTitre, $Format, $StockTotal, $Dispo);
		
		// enregistrement
		$Stock->toBase();
		
		echo "enregistrement du titre :".$Stock->toString();
		echo "</div>";
	?>
</body>
</html>
