function jouer() {


    document.getElementById('nom').style.backgroundImage = "white";
    var nom = document.getElementById('nom').value;

    if (nom == "") {
        document.getElementById('nom').style.backgroundColor = "red";
        alert("Attention : vous devez saisir votre nom avant de jouer");
        return null;
    }

    var temps = new Date().getTime();

    var parametres = "nom=" + codeContenu("nom") + "&anticache=" + temps;

    objet_xml_http_request = creation_objet_xml_http_request();

    objet_xml_http_request.open('get', 'gainAleatoire.php?' + parametres, true);

    objet_xml_http_request.onreadystatechange = actualiserPage;

    document.getElementById('button').disabled = true;
    document.getElementById('charge').style.visibility = "visible";

    objet_xml_http_request.send(null);
}

function cumul() {

    objet_xml_http_request2 = creation_objet_xml_http_request();

    var temps = new Date().getTime();

    var parametres = "nom=" + codeContenu("nom") + "&anticache=" + temps;

    objet_xml_http_request2.open('get', 'gainCumul.php?' + parametres, true);

    objet_xml_http_request2.onreadystatechange = actualiserCumul;

    document.getElementById('charge2').style.visibility = "visible";

    objet_xml_http_request2.send(null);

    setTimeout("cumul()", 6000);
}

function testerNavigateur() {
    objet_xml_http_request = creation_objet_xml_http_request();
    if (objet_xml_http_request == null) {
        document.getElementById('button').disabled = true;
        var erreurNavigateur = "Erreur du navigateur : Impossible de créer l'objet XML_HTTP_REQUEST";
        document.getElementById('info').innerHTML = erreurNavigateur;
        document.getElementById('info').style.visibility = "visble";
        // document.getElementById('button').onclick = jouer;
    }
    cumul();
}
// window.document.onload = testerNavigateur;