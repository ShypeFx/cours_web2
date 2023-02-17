<?php
require("connexion.inc.php");
$select_query = "SELECT service FROM personne";
try {

    $pers = 0;
    $comm = 0;
    $prod = 0;


    $res = $pdo->query($select_query);
    while ($row = $res->fetch()) {
            if($row['service'] == "pers"){
                $pers = $pers + 1;
            }else if($row['service'] == "prod"){
                $prod = $prod + 1;
            }else{
                $comm = $comm + 1;
            }
}

echo "<h1> Synthese </h1>";
echo "<table> <tr><td>Service</td> <td> Nombre de salaries </td> </tr>
            <tr> <td> comm </td> <td> ". $comm ."</td> </tr>
            <tr> <td> pers </td> <td> ". $pers ."</td> </tr>
            <tr> <td> prod </td> <td> ". $prod ."</td> </tr>
            <tr> <td> Total </td> <td> ". $prod + $pers + $comm ."</td> </tr> </table>";

$res->closeCursor();
    } catch (PDOException $e) {
        die("Erreur: " . $e->getMessage());
}
?>

