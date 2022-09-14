
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


function testerNavigateur(){
    objetXHR=creationXHR();
    if(objetXHR==null){
        document.getElementById("button").disabled=true;
        var erreurNavigateur="Erreur Navigateur:Création d'objet XHR impossible";
        remplacerContenu("info",erreurNavigateur);
        document.getElementById("info").style.visibility="visible";
    }
}