<?php
session_start();

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

if(isset($_SESSION[$nom]))
{
    $resulat = $_SESSION[$nom];
}
else
{
    $resulat = 0;
}
echo $resulat;
?>