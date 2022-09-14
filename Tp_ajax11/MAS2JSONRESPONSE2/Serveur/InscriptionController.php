<?php
    session_start();
    include_once('Joueur.Admin.php');
    include_once('Joueur.Class.php');
        
        $nom = $_POST["nom"];
        $prenom=$_POST["prenom"];
        $email=$_POST["email"];
        $password = $_POST["password"];

        $joueur=new Joueur();
        
        $joueur->setNomJoueur($nom);
        $joueur->setPrenomJoueur($prenom);
        $joueur->setJoueurEmail($email);
        $joueur->setPassword($password);

        $UserAdmin = new JoueurAdmin();

        $result = $UserAdmin->AjouterJoueur($joueur);

        if($result==true){
            header('Location:../Connexion.php');
        }
        else{
            echo"Inscription Echouée";
            header('Location:../Inscription.php');
        }
?>