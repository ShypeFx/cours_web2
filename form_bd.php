<!DOCTYPE html>
<html lang=fr>
 
 <head>
 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 
	<title>Formulaire de saisie d'une personne</title>
</head>

<body>
	<h1>Formulaire correspondant à une personne</h1>

	<form action="" method="POST">
		<p>Nom <input type="text" name="nom" size="40"  /> 
			Prénom <input type="text" name="prenom" size="20" /><br />
			<input type="radio" name="titre" value="1" />M. <br />
			<input type="radio" name="titre" value="2"  />Mme <br />
			<input type="radio" name="titre" value="3" />Mlle <br />
			Date de naissance <input type="text" name="date_n" size="6" value="aa/mm/jj"  /> <br />
			Service <select name="service">
            <?php 
                require("connexion.inc.php");
                $select_query = "SELECT * FROM service ";
                try {
                    $res = $pdo->query($select_query);
                    while ($row = $res->fetch()) {
                            echo "<option value=" .$row["service"] . ">". $row["lib_service"] ."</option>";
                }
                $res->closeCursor();
                    } catch (PDOException $e) {
                        die("Erreur: " . $e->getMessage());
                }
                ?>
		</select>
	</p>
	<p>
		Loisirs <br />
        <?php 
                require("connexion.inc.php");
                $select_query = "SELECT * FROM loisir ";
                try {
                    $res = $pdo->query($select_query);
                    while ($row = $res->fetch()) {
                            echo "<input type=checkbox name=loisirs[] value=" .$row["code_loisir"] . ">". $row["lib_loisir"] ."</input>";
                }
                $res->closeCursor();
                    } catch (PDOException $e) {
                        die("Erreur: " . $e->getMessage());
                }
                ?>


	</p>
	<p>
		<input type="reset" name="reset" value="Effacez" /> 
		<input type="submit" name="submit" value="Validez" />
	</p>
</form>

</body>
</html>
