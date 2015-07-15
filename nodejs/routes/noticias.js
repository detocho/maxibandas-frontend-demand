exports.get = function(request, response){

    var json;

    json={
        "news_id": "nas-123",
        "title": "Espinoza Paz ganador del premio lo nuestro 2015",
        "summary": "Miami.- Los cantantes mexicanos Espinoza Paz  por su aportación a la música latina de Estados Unidos, en la 22 entrega de Premios Broadcast Music, Inc. (BMI) a la Música Latina.",
        "url_picture": "http://www.laley1005.com/wp-content/uploads/2015/05/Espinoza.jpg",
        "link": "http://www.google.com",
        "date_publication": "Nov 23, 2015 7:40:41 AM"
    };

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