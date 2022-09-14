<?php
    include("ConnexionBaseDeDonnées.php");
    include_once('Joueur.Class.php');

    class JoueurAdmin
    {   
        public function JoueurLogin($nom, $password)
        {
            global $db;

            $selectFromDb = $db->prepare('SELECT * FROM Joueur WHERE nom=:user_name AND password=:pass');

                    $selectFromDb->execute(
                        array(
                            'user_name'=>$nom,
                            'pass'=>$password
                        )
                    );

                    $result = $selectFromDb->fetch();

                    if ($result != null){
                        return $result;
                    }

            return null;
        }


        public function AjouterJoueur(Joueur $joueur)
        {
            global $db;

            $AjouterJoueur=$db->prepare("INSERT INTO Joueur(nom,prenom,solde,email,password)
            VALUES(:user_name,:user_pre,:user_sold,:user_email,:user_pass)");

            $AjouterJoueur->execute
            (
                array
                (
                    'user_name'=>$joueur->getNomJoueur(),
                    'user_pre'=>$joueur->getPrenomJoueur(),
                    'user_sold'=>$joueur->getJoueurSolde(),
                    'user_email'=>$joueur->getJoueurEmail(),
                    'user_pass'=>$joueur->getPassword(),
                )
            );


            $error=$AjouterJoueur->errorInfo();

            if(is_null($error[1]))
            {
                return true;

            }
            return false;
        }


       
        public function ModifierJoueur(Joueur $joueur,$id)
        {
            global $db;

            $ModifierJoueur=$db->prepare("UPDATE Joueur SET nom=:user_name,prenom=:user_pre,solde=:user_sold,email=:user_mail,password=:user_pass WHERE id_joueur=:id");
            $ModifierJoueur->execute
            (
       
                array
                (
                    'id'=>$id,
                    'user_name'=>$joueur->getNomJoueur(),
                    'user_pre'=>$joueur->getPrenomJoueur(),
                    'user_sold'=>$joueur->getJoueurSolde(),
                    'user_mail'=>$joueur->getJoueurEmail(),
                    'user_pass'=>$joueur->getPassword(),
                )
                );

            $error=$ModifierJoueur->errorInfo();

            if(is_null($error[1]))
            {
                return true;

            }
            return false;
        }





        public function SupprimerJoueur($id)
        {
            global $db;

            
            $SupprimerJoueur=$db->prepare('DELETE FROM Joueur WHERE id_joueur=:joueur_id');
            
                $SupprimerJoueur->execute(array
                (
                    'joueur_id'=>$id
                )
            );

            $error=$SupprimerJoueur->errorInfo();

            if(is_null($error[1]))
            {
                return true;
            }
            return false;

            $SupprimerTentativesJoueur=$db->prepare('DELETE FROM tentative WHERE id_joueur=:id');

            $SupprimerTentativesJoueur->execute(array
            (
                'id'=>$id
            )
            );

        }



        public function ReadAllUser()
        {
            global $db;
            $Table_User=$db->query("SELECT *FROM users");
            $Each_User=$Table_User->fetch();
            
            while($Each_User=$Table_User->fetch())
            {
                  $Each_User["user_id"];
                  $Each_User["user_name"];
                  $Each_User["user_Password"];
                  $Each_User["sexe"];
                  $Each_User["phone_number"];
                  $Each_User["user_picture"];
                  $Each_User["Age"];
                  $Each_User["email"];

            }
            
        }
        
        public function InfosJoueur($id)
        {
            global $id;
            global $db;

            $GetInfosJoueur=$db->prepare("SELECT * FROM Joueur WHERE id_joueur=:id");

            $GetInfosJoueur->execute(array
            (
                'id'=>$id
            )
            );
        
            $infos=$GetInfosJoueur->fetch();

        }

     


    }
?>