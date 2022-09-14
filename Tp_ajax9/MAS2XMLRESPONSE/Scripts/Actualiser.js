function actualiserPage(){
    
    if(objetXHR.readyState==4){
        if(objetXHR.status==200){
            var ReponseServeur=objetXHR.responseXML;
            console.log(ReponseServeur);
            var ReponseServeurResultats=ReponseServeur.firstChild;
        
            document.getElementById("resultat").innerHTML=ReponseServeurResultats;
            document.getElementById("resultat").style.visibility="visible";

            message=document.getElementById('message').innerHTML=ReponseServeurResultats.childNodes[0].firstChild.nodeValue;
            somme=document.getElementById('gain').innerHTML = ReponseServeurResultats.childNodes[1].firstChild.nodeValue;
            mise=document.getElementById('MiseResponse').innerHTML = ReponseServeurResultats.childNodes[2].firstChild.nodeValue;
            portfeuille=document.getElementById('portfeuille').innerHTML = ReponseServeurResultats.childNodes[3].firstChild.nodeValue;
            nbre=document.getElementById('nbre_tire').innerHTML = ReponseServeurResultats.childNodes[4].firstChild.nodeValue;
            document.getElementById("button").disabled=false;
            document.getElementById("charge").style.visibility="hidden";
        
        }else{
            document.getElementById("resultat").innerHTML="Erreur serveur:"+objetXHR.status+" - "+objetXHR.statusText;
            document.getElementById("resultat").style.visibility="visible";
     
            document.getElementById("button").disabled=false;
            document.getElementById("charge").style.visibility="hidden";

            objetXHR.abort();
            objetXHR=null;
        }
    }
}