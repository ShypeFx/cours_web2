<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Exercices PHP et bases de données</title>
</head>

<body>
	<h1>Test de connexion</h1>
	<p> Mise en place de la connexion. </p>
	<?php
		/* Si le script connexion.inc.php ne se trouve pas dans le même répertoire que
		* ce script, utilisez la commande suivante pour changer de répertoire courant
		* */
		//chdir("chemin");

		include("connexion.inc.php");
	?>

	<h2>Si la connexion n'a pas échouée, on va maintenant pouvoir faire des choses...</h2>

</body>

</html>