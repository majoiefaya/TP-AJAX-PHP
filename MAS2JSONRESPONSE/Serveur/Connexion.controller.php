<?php
    session_start();
    include_once('Joueur.Admin.php');
        
        $nom = $_POST["nom"];
        $password = $_POST["password"];

        $UserAdmin = new JoueurAdmin();

        $result = $UserAdmin->JoueurLogin($nom, $password);

        if($result != null){

            $auth = true;
            $_SESSION['nom'] = $nom;
            $_SESSION['prenom']= $result['prenom'];
            $_SESSION['email']= $result['email'];
            $_SESSION['password']= $password;

            setcookie("Auth",$nom,time()+7*24*3600,"/");

           header('Location:../PageDeJeux.php');
        }
        else{
            echo"Identifiants Erronés";
            header('Location:../Connexion.php');
        }
?>