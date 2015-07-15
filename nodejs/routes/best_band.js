exports.get = function(request, response){

  var json;

  json={
    "band_id": "MB1232",
    "category_id": "MX1MB15",
    "name": "Mariachi gamamil",
    "title": "Mariachi null Estado de México",
    "price_min": 2500.0,
    "price_max": 20000.0,
    "currency_type": "MXP",
    "location": {
      "level": "neighborhood",
      "children_locations": [],
      "parent_location": [{
        "level": "city",
        "name": "Tultitlán",
        "location_id": "CTY416"
      }, {
        "level": "state",
        "name": "Estado de México",
        "location_id": "EST10"
      }, {
        "level": "country",
        "name": "México",
        "location_id": "MX"
      }],
      "name": "Belém",
      "location_id": "NGD59165"
    },
    "service_locations": [{
      "name": "Aguscalientes",
      "locationId": "LOC-0001"
    }, {
      "name": "Baja California",
      "locationId": "LOC-0002"
    }],
    "events_types": ["Bodas", "XV años", "Ferias"],
    "manager_id": "3",
    "contact": {
      "name": "",
      "phone": "",
      "email": ""
    },
    "pictures": [{
      "picture_id": "1",
      "url": "images/banda_2.jpg",
      "size": "260x160",
      "secure_url": ""
    }],
    "url_videos": ["https://www.youtube.com/watch?v\u003dkIJX9bJ7ZOU", "https://www.youtube.com/watch?v\u003dkIJX9bJ7ZOU"],
    "description": "Somos un mariachi con mas de 10 años de experiencia, nuestra musica es con hecha con alta calidad, no te arrepntiras, miranos en el video",
    "attributes": [],
    "type_item": "destacado",
    "status": "active",
    "date_registration": "Nov 23, 2014 7:40:41 AM",
    "date_update": "Nov 28, 2014 10:46:45 AM",
    "date_expired": "Jan 22, 2015 7:40:41 AM",
    "date_activation": "Nov 23, 2014 7:40:41 AM",
    "date_renovation": "Nov 23, 2014 7:40:41 AM",
    "date_deleted": "null"
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
