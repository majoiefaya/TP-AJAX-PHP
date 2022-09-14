
function jouer(){
   
    objetXHR = creationObjetXMLHttpRequest();
    var anticacheTime=new Date().getTime();
    var portfeuille=document.getElementById("portfeuille").textContent;
    var mise=document.getElementById("mise").value;
    var niveau=document.getElementById("niveau").value;
    var nomJoueur=document.getElementById("nom").textContent;

    var parametres="portfeuille="+portfeuille+"&mise="+mise+"&niveau="+niveau+"&nom_joueur="+nomJoueur+"&anticache="+anticacheTime;
    objetXHR.open("post","Serveur/TraitementsServeur.php",true);
    objetXHR.onreadystatechange=actualiserPage;
    objetXHR.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    document.getElementById("button").disabled=true;
    document.getElementById("charge").style.visibility="visible";
    objetXHR.send(parametres);


}