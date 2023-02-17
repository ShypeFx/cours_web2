<?php
require("connexion.inc.php");
$select_query = "SELECT * FROM personne";
try {
    $res = $pdo->query($select_query);
    while ($row = $res->fetch()) {
            if($row["service"] == "pers"){
                echo $row["prenom"] ." " .$row["nom"] ." est né(e) le" .$row["date_n"] ."et travail dans le service Personnel <br>";
            }else{
                echo $row["prenom"] ." " .$row["nom"] ." est né(e) le" .$row["date_n"] ."et travail dans le service Commercial <br>";
            }  
}
$res->closeCursor();
    } catch (PDOException $e) {
        die("Erreur: " . $e->getMessage());
}
?>

