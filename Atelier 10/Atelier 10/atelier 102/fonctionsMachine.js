function jouer() {



    var nom = document.getElementById('nom').value;

    var temps = new Date().getTime();

    var parametres = "nom=" + nom + "&anticache=" + temps;

    objet_xml_http_request = creation_objet_xml_http_request();

    objet_xml_http_request.open('get', 'gainAleatoire.php?' + parametres, true);

    objet_xml_http_request.onreadystatechange = actualiserPage;

    document.getElementById('button').disabled = true;
    document.getElementById('charge').style.visibility = "visible";

    objet_xml_http_request.send(null);
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
}
// window.document.onload = testerNavigateur;