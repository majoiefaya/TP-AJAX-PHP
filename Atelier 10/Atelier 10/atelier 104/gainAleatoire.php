<?php
header("Content-Type: text/plain; charset=utf-8");
header("Cache-Control: no-cache . private");
header("Pragma: no-cache");
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