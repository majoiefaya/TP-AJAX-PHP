function actualiserPage() {
    if (objet_xml_http_request.readyState == 4) {
        if (objet_xml_http_request.status == 200) {
            resultat = objet_xml_http_request.responseText;
            var nouveauResultat = resultat.split(':');
            document.getElementById('resultat').innerHTML = decodeURI(nouveauResultat[1]);
            document.getElementById('gagnant').innerHTML = decodeURI(nouveauResultat[0]);
            document.getElementById('info').style.visibility = "visible";
            document.getElementById('button').disabled = false;
            document.getElementById('charge').style.visibility = "hidden";
        } else {
            document.getElementById('info').innerHTML = "Erreur du serveur :" + objet_xml_http_request.status + " - " + objet_xml_http_request.statusText;
            document.getElementById('info').style.visibility = "visible";
            document.getElementById('button').disabled = false;
            document.getElementById('charge').style.visibility = "visible";
            objet_xml_http_request.abort();
            objet_xml_http_request = null;
        }
    }
}

function codeContenu(id) {
    var contenu = document.getElementById(id).value;
    return encodeURIComponent(contenu);
}

function remplacerContenu(id, valeur) {
    document.getElementById(id).innerHTML = valeur;
}

function actualiserCumul() {

    if (objet_xml_http_request2.readyState == 4) {
        if (objet_xml_http_request2.status == 200) {
            var cumulGain = objet_xml_http_request2.responseText;
            document.getElementById('cumul').innerHTML = cumulGain;
            document.getElementById('charge2').style.visibility = "hidden";
        }
    }
}