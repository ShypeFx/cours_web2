<?php
    session_start();

    if(isset($_SESSION['logged-in']) == true){
        unset($_SESSION['username']);
        unset($_SESSION['logged-in']);
        session_destroy();
        header('Location: form_auth.php');
        exit;
    }else{
        header('Location: form_auth.php');
        exit;
    }
?>