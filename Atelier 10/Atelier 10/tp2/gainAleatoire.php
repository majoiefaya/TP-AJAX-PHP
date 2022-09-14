<?php
header("Content-Type: text/plain");
sleep(2);


if(isset($_REQUEST['niveau']))
{ 
    $niveau = $_REQUEST['niveau'];

    if($niveau == "facile"){
        $resultat = rand(0,100);
        echo $resultat;
    }
    else if($niveau == "moyen"){
        $resultat = rand(0,500);
    }
    else if($niveau == "difficile"){
        $resultat = rand(0,1000);
    }
}


?>