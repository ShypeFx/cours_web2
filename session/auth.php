<?php

include("../connexion.inc.php");
session_start();

$query = $pdo->prepare("SELECT * FROM users WHERE login = ?");
$query->execute([$_POST['username']]);
$user = $query->fetch();


if ($user && ( md5($_POST['password']) == $user['mot_passe']))
{
    $_SESSION['username'] = $username;
    $_SESSION['logged-in'] = true;
    echo " Connexion valide ";
    header('Location: home.php');

} else {
    echo "<div style><h2>Username ou Password invalid ! </h2></div>";
    echo " <a href=form_auth.php> <p> retour </p> </a> ";
}
?>