
exports.get = function(request, response){

  var json;

  json={
    "event_id": "nas-123",
    "title": "Feria de San Marcos 2015",
    "summary": "La Feria Nacional de San Marcos (conocida tambien como \"La Feria de México\") Es un evento anual, el cual se lleva a cabo entre los meses de abril y mayo en el Estado de Aguascalientes (Centro de México)es en una de las más antiguas y en la actualidad una de las de mayor prestigio internacional.",
    "url_picture": "http://www.revistabuenviaje.com/conocemexico/destinos/aguascalientes/feria_san_marcos/feria_san_marcos-02.jpg",
    "link": "http://www.feriadesanmarcos.gob.mx/",
    "date_publication": "Nov 23, 2015 7:40:41 AM"
  }

  response.set('Access-Control-Allow-Origin','*');
  response.set('Access-Control-Allow-Headers', 'Access-Control-Allow-Origin, X-Requested-With, Content-Type, Accept');
  response.set('Access-Control-Allow-Methods', 'PUT, POST, GET, OPTIONS, HEAD');

  response.json(200, json);


}

exports.options = function(request, response){

  response.set('Access-Control-Allow-Origin','*');
  response.set('Access-Control-Allow-Headers', 'Access-Control-Allow-Origin, X-Requested-With, Content-Type, Accept');
  response.set('Access-Control-Allow-Methods', 'PUT, POST, GET, OPTIONS, HEAD');

  response.send(200);
}
