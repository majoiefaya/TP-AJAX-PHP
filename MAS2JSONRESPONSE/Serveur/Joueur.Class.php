<?php

    class Joueur{
        private $id_joueur;
        private $nom;
        private $prenom;
        private $solde;
        private $email;
        private $password;
               
        public function getJoueurId(){
            return $this->id_joueur;
        }

        public function setJoueurId($newJoueurId){
            $this->id_joueur = $newJoueurId;
        }


        public function getNomJoueur(){
            return $this->nom;
        }

        public function setNomJoueur($newNomJoueur){
            $this->nom = $newNomJoueur;
        }
          
        public function getPrenomJoueur(){
            return $this->prenom;
        }

        public function setPrenomJoueur($newJoueurPrenom){
            $this->prenom = $newJoueurPrenom;
        }

        
        public function getJoueurSolde(){
            return $this->solde;
        }

        public function setJoueurSolde($newJoueurSolde){
            $this->solde = $newJoueurSolde;
        }

        public function getJoueurEmail()
        {
            return $this->email;
        }


        public function setJoueurEmail($new_mail)
        {
            if(!empty($new_mail))
            {
                $this->email=$new_mail;
            } 
        }

        public function getPassword(){
            return $this->password;
        }

        public function setPassword($newPassword){
            $this->password = $newPassword;
        }

        
    }


    
?> 