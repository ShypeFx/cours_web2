<?php
require("connexion.inc.php");

try {

    $lib = $_REQUEST['lib_loisir'];
    $code = $_REQUEST['code_loisir'];

    $select_query = "INSERT INTO loisir VALUES ('$code','$lib')";
    $res = $pdo->query($select_query);

    echo " l'activité : " .$lib ." à bien été insérée dans la bdd ";
    
    }catch (PDOException $e) {
        die("Erreur: " . $e->getMessage());
}
?>

