

function actualiserPage(){
    
    if(objetXHR.readyState==4){
        if(objetXHR.status==200){
            var nouveauGain=objetXHR.responseText;

            document.getElementById("resultat").innerHTML=nouveauGain;

            document.getElementById("info").style.visibility="visible";
        
            document.getElementById("button").disabled=false;
            document.getElementById("charge").style.visibility="hidden";
        
        }else{
            document.getElementById("info").innerHTML="Erreur serveur:"+objetXHR.status+" - "+objetXHR.statusText;
            document.getElementById("info").style.visibility="visible";

            document.getElementById("button").disabled=false;
            document.getElementById("charge").style.visibility="hidden";

            objetXHR.abort();
            objetXHR=null;
        }
    }
}

function creationObjetXMLHttpRequest(){
    var resultat=null;
    try{
        resultat=new XMLHttpRequest();
    }
    catch(Error){
        try{
            resultat=new ActiveXObject("Msxml2.XMLHTTP");
        }catch(Error){
            try{
                resultat=new ActiveXObject("Microsoft.XMLHTTP");
            }catch(Error){
                resultat=null;
            }
        }
    }
    return resultat;
}

function jouer(){
   
    objetXHR = creationObjetXMLHttpRequest();
    var temps=new Date().getTime();
    
    var nom=document.getElementById("nom").value;
    var parametres="nom="+nom+"&anticache="+temps;
   

    objetXHR.open("get","gainAleatoire.php?"+parametres,true);

    objetXHR.onreadystatechange=actualiserPage;

    document.getElementById("button").disabled=true;
    document.getElementById("charge").style.visibility="visible";

    objetXHR.send(null);

}

function testerNavigateur(){
    objetXHR=creationXHR();
    if(objetXHR==null){
        document.getElementById("button").disabled=true;
        var erreurNavigateur="Erreur Navigateur:Création d'objet XHR impossible";
        remplacerContenu("info",erreurNavigateur);
        document.getElementById("info").style.visibility="visible";
    }
}