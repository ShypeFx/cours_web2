<?php

/*
 * création d'objet PDO de la connexion qui sera représenté par la variable $cnx
 */
$user =  "root";
$pass =  "";
$db_name = "esmea1";
try {
    $pdo = new PDO("mysql:host=localhost;dbname=$db_name",
    $user,
    $pass);  
    $pdo->exec("set names utf8");   
}
catch (PDOException $e) {
    echo "ERREUR : La connexion a échouée";

    /* Utiliser l'instruction suivante pour afficher le détail de erreur sur la
    * page html. Attention c'est utile pour débugger mais cela affiche des
    * informations potentiellement confidentielles donc éviter de le faire pour un
    * site en production.*/

    echo "Error: " . $e;
}

?>

