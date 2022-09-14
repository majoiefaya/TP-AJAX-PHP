function creation_objet_xml_http_request() {
    var resultat = null;
    try {
        resultat = new XMLHttpRequest();
    } catch (error) {
        resultat = null;
    }
    return resultat;
}