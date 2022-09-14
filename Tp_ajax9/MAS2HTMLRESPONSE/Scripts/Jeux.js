
function jouer(){
   
    objetXHR = creationObjetXMLHttpRequest();
    var anticacheTime=new Date().getTime();
    var portfeuille=document.getElementById("portfeuille").textContent;
    
    var mise=document.getElementById("mise").value;
    var niveau=document.getElementById("niveau").value;
    var joueur_id=document.getElementById("id_joueur").textContent;

    var parametres="portfeuille="+portfeuille+"&mise="+mise+"&niveau="+niveau+"&id_joueur="+joueur_id+"&anticache="+anticacheTime;
    objetXHR.open("post","Serveur/TraitementsServeur.php",true);
    objetXHR.onreadystatechange=actualiserPage;
    objetXHR.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    document.getElementById("button").disabled=true;
    document.getElementById("charge").style.visibility="visible";
    objetXHR.send(parametres);


}