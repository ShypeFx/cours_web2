<?php 


session_start();

if($_SESSION['logged-in'] != false){
    echo " <h1>home</h1> ";
    echo " session ok ";
    echo " <a href=deconnect.php> <p>deconnexion</p> </a> ";

}else{
    header('Location: form_auth.php');
}


?>