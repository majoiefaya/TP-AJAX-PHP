<?php
include('Preloader.php');
?>
<head>
 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="Ajax.js"></script>
<link rel="stylesheet" href="Style.css">
</head>


<div class="d-flex justify-content-center">
    <div class="Police" id="info">
        vous avez gagne<span id="gain">0</span>
        Votre Portfeuille Contient<span id="portfeuille">0euros</span>
    </div>
    <img id="charge" src="m.gif" />
    <div>
        <form method="GET">
            Indiquez Votre Nom
            <input type="text" id="nom" name="nom"/>
            avant de 
            <input name="button" type="button" onclick="jouer();" value="JOUER" id="button" class="button"/>
        </form>
    </div>
</div>
    
