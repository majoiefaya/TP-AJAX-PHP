<?php

    try
    {
        $db = new PDO('mysql:host=localhost;dbname=casino;charset=utf8','root', '',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    }

    catch(Exception $message)
    {
        die('Erreur :' .$message->getMessage() );
    }
?>