<?php

include("ConnexionBaseDeDonnées.php");

header("Content-Type: text/plain ; charset=utf-8");
header("Cache-Control:no-cache,private");
header("Pragma:no-cache");
sleep(2);
$mise=$_REQUEST['mise'];
$portfeuille=$_REQUEST['portfeuille'];
$joueur_id=$_REQUEST['id_joueur'];

if(isset($_REQUEST['niveau'])) 
$niveau=$_REQUEST['niveau'];
else $niveau="Vous n avez selectionner aucun Niveau";
if($portfeuille>$mise){
    if($niveau=="Facile"){
        $NmT=rand(0,100);
        $id_niveau=1;
    
        if($portfeuille>$mise){
            if($NmT<50){
                $portfeuille=$portfeuille-$mise;
                $somme=0;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Perdu",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=50 and $NmT<75){
                $somme=$mise/2;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=75 and $NmT<100){
                $somme=$mise;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné et Fais Une Double Mise",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
        }
    
    }else if($niveau="Moyen"){
        $NmT=rand(0,500);
        $id_niveau=2;
        if($portfeuille>$mise){
            if($NmT<250){
                $portfeuille=$portfeuille-$mise;
                $somme=0;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Perdu",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=250 and $NmT<375){
                $somme=$mise/2;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=375 and $NmT<500){
                $somme=$mise;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné et Fais Une Double Mise",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
        }
    }else if($niveau="Difficile"){
        $NmT=rand(0,1000);
        $id_niveau=3;
        if($portfeuille>$mise){
            if($NmT<500){
                $portfeuille=$portfeuille-$mise;
                $somme=0;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Perdu",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=500 and $NmT<750){
                $somme=$mise/2;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné ",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
            else if($NmT>=750 and $NmT<1000){
                $somme=$mise;
                $portfeuille=$portfeuille+$somme;
                $resultat='
                {"resultats":{
                    "message":"Vous Avez Gagné Et Fais Une Double Mise",
                    "somme":"'.$somme.'",
                    "mise":"'.$mise.'",
                    "portfeuille":"'.$portfeuille.'",
                    "nombre":"'.$NmT.'"}
                }';
                echo $resultat;
            }
        }
    }
    global $db;
    $date = date('d-m-y h:i:s');
    $AjouterTentative=$db->prepare("INSERT INTO Tentative(id_joueur,id_niveau,mise,NumeroTire,gain,DateTentative)
    VALUES(:id_j,:id_n,:m,:NmT,:g,:d)");
   
    $AjouterTentative->execute(
        array(
            'id_j'=>$joueur_id,
            'id_n'=>$id_niveau,
            'm'=>$mise,
            'NmT'=>$NmT,
            'g'=>$somme,
            'd'=>$date
   
        )
    );
   
    
    $error=$AjouterTentative->errorInfo();
   
    if(is_null($error[1]))
    {
        return true;
        echo $error;
    }
    return false;
}

else{
    $portfeuille;
    $somme=0;
    $resultat="Votre Solde est Insufisant:".':'.$somme.':'.$mise.':'.$portfeuille.':'.$NmT;
    echo $resultat;
    
    
}



?>