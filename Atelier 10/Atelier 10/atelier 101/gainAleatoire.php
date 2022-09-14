<?php
header("Content-Type: text/plain");
sleep(2);
if(isset($_REQUEST['nom']))
{ 
    $nom = $_REQUEST['nom'];
}
else
{
    $nom = "inconnu";
}


$gain = rand(0,100);

$resultat = $nom.':'.$gain;


echo $resultat;

?>