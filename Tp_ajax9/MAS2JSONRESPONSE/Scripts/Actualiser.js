function actualiserPage(){
    
    if(objetXHR.readyState==4){
        if(objetXHR.status==200){
            var ReponseServeur=objetXHR.responseText;
            var ReponseServeurResultats=eval('('+ReponseServeur+')');
        
            document.getElementById("resultat").innerHTML=ReponseServeurResultats;
            document.getElementById("resultat").style.visibility="visible";

            message=document.getElementById('message').innerHTML=ReponseServeurResultats.resultats.message;
            somme=document.getElementById('gain').innerHTML = ReponseServeurResultats.resultats.somme;
            mise=document.getElementById('MiseResponse').innerHTML = ReponseServeurResultats.resultats.mise;
            portfeuille=document.getElementById('portfeuille').innerHTML = ReponseServeurResultats.resultats.portfeuille;
            nbre=document.getElementById('nbre_tire').innerHTML = ReponseServeurResultats.resultats.nombre;
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