<?php
include('Serveur/ConnexionBaseDeDonnées.php');
$nom_joueur=$_POST["nom"];



$InfosJoueur=$db->prepare("SELECT * FROM Joueur WHERE nom=:nom_j");
$InfosJoueur->execute(
    array(
        'nom_j'=>$nom_joueur
    )
);
$Infos=$InfosJoueur->fetch();
$joueur_id=$Infos["id_joueur"];




$InfosTentatives=$db->prepare("SELECT * FROM Tentative WHERE id_joueur=:id_j");
$InfosTentatives->execute(
    array(
        'id_j'=>$joueur_id
    )
);

$InfosTentativesJoueur=$InfosTentatives->fetch();

?>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <title>Casino</title>
    <link href="Css/bootstrap.css" rel="stylesheet">
    <link href="Css/sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="Css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="Scripts/sidebar.js"></script>
    <script src="Scripts/Actualiser.js"></script>
    <script src="Scripts/fonctionAjax.js"></script>
    <script src="Scripts/Jeux.js"></script>
    <link rel="stylesheet"  href="Css/css.css">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
   </head>

   <body>
    <header>
        <nav class="menu">
            <section id="sect1">
                <p id="para1">
                    CASINO
                </p>
            </section>
            <section id="sect2">
                <p id="salutation">Bienvenue Msr  <span id="nom"><?php echo $_POST["nom"]?></span>
                <span><?php echo " "; echo $_POST["prenom"]?></span></p>
            </section>
        </nav>
    </header>

        <button class="SidebtnClass" onclick="openNav()">☰ Vos Parties</button>  
        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <div class="tableau">
                <table class="table table-dark">
                    <thead>
                        <tr>
                        <th scope="col">NT</th>
                        <th scope="col">Mise</th>
                        <th scope="col">NumeroTire</th>
                        <th scope="col">Gain</th>
                        <th scope="col">DateMise</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        while($InfosTentativesJoueur=$InfosTentatives->fetch()){?>
                            <tr>  
                                <td><?php echo $InfosTentativesJoueur["id"]?></td>
                                <td><?php echo $InfosTentativesJoueur["mise"]?></td>
                                <td><?php echo $InfosTentativesJoueur["NumeroTire"]?></td>
                                <td><?php echo $InfosTentativesJoueur["gain"]?></td>
                                <td><?php echo $InfosTentativesJoueur["DateTentative"]?></td>      
                            </tr>      
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div>
            <h4 id="resultat" hidden></h4>
            <h4 id="message"></h4>
            <h4 id="LabelResultat">Resultats:</h4>
        </div>
        <div>
            <img id="charge" src="images/raining-money-26.gif" widht="80" height="150">
        </div>
        <div class="div">
            <img src="images/Bg.webp" id="img">
        </div>
            <form method="post" class="SelectRes">
                <select name="niveau" id="niveau" class="custom-select form-control">
                    <option value="Facile">Facile</option>
                    <option value="Moyen">Moyen</option>     
                    <option value="Difficile">Difficile</option>
                </select>
                <div class="portfeuille">
                    <span id="portfeuille">25000</span><span title="Somme Total du joueur"> franc</span>
                </div>
                <input type="text" name="mise" id="mise" class="form-control"/>
            </form>
            <section id="sect">
                <span class="block" id="MiseResponse"></span>
                <span class="block" id="gain"></span>
                <span class="block" id="nbre_tire"></span>
            </section>
            <h1 id="id_joueur"><?php echo $joueur_id ?></h1>
            <input type="button" name="button" onclick="jouer();" value="Jouer" id="button" class="buttonJouer"/>
       
    </body>
</html>

   