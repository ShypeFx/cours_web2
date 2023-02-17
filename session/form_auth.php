
<?php 

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    require('auth.php');
}





?>
<h2> Formulaire de connexion </h2>
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
 <p> USERNAME : <input type="text" name="username" value /></p>
 <p>PASSWORD : <input type="password" name="password" /></p>
 <p><input type="submit" value="Envoyer"></p>
</form>