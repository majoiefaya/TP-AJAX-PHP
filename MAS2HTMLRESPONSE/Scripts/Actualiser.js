function actualiserPage(){
    
    if(objetXHR.readyState==4){
        if(objetXHR.status==200){
            var ReponseServeur=objetXHR.responseText;
            document.getElementById("resultat").innerHTML=ReponseServeur;
            document.getElementById("resultat").style.visibility="visible";
 
            var ContenuReponse = ReponseServeur.split(':');
            message=document.getElementById('message').innerHTML = decodeURI(ContenuReponse[0]);
            somme=document.getElementById('gain').innerHTML = decodeURI(ContenuReponse[1]);
            mise=document.getElementById('MiseResponse').innerHTML = decodeURI(ContenuReponse[2]);
            portfeuille=document.getElementById('portfeuille').innerHTML = decodeURI(ContenuReponse[3]);
            nbre=document.getElementById('nbre_tire').innerHTML = decodeURI(ContenuReponse[4]);
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