'use strict'


var module = angular.module('DemandPageServices', ['ngResource']);


// ****** Para la pagina de la banda VBP ************** //

module.factory('Band', function($resource){

    var url = apiBaseUrl+'/bands/:bandId';
    return $resource(url, {},{
       get:{method:"GET", params:{}}
    });
});



// **** Para el listado de busqueda *****//

module.factory('SearchBands', function($resource){

    var url = apiBaseUrl+'/bands/search/';
    return $resource(url, {},{
       get:{method:"GET", params:{status:'active'}}
    });
});


// **** Para la home page ********//
module.factory('LatestNews', function($resource){

    var url = apiBaseUrl+'/news/latest';
    return $resource(url, {},{
        get:{method:"GET", params:{}}
    });

});

module.factory('BestEvent', function ($resource){

    var url = apiBaseUrl+'/events/best_events';
    return $resource(url, {},{
       get:{method:"GET", params:{}}
    });

});

module.factory('BestBand', function ($resource){

    var url = apiBaseUrl+'/bands/best_band';
    return $resource(url, {},{
       get:{method:"GET", params:{}}
    });
});

// ******* Servicios compartidos *************/
module.factory('Categories',function($resource){

    var url = apiBaseUrl+"/categories/:categoryId";
    return $resource(url, {},{
       get:{method:"GET", params:{}}
    });
});

module.factory('States', function($resource){

    var url = apiBaseUrl+'/locations/:locationId';

    return $resource(url, {},{
       get:{method:"GET", params:{}}
    });
});



/*

module.factory('Locations',function ($resource){
    var url = apiBaseUrlLocations + "/locations/zipcodes/:action";
    return $resource(url, {}, {
        zipcode:{method:"GET"}
    });
});

module.factory('Bands', function ($resource){
    var url = "/published/band";
    return $resource(url, {},{
       newband:{method:"GET"}
    });
});

// TODO generar un servicio para las categorias
module.factory('Categories', function($resource){
    var url = apiBaseUrlCategories + "/categories/MX2";
    return $resource(url,{},{
       socialEvents:{method:"GET"}
    });

});
// TODO generar un servicio para los estados
module.factory('States', function($resource){
    var url = apiBaseUrlLocations + "/locations/MX";
    return $resource(url, {},{
       stateEvents:{method:"GET"}
    });

});
*/
/*

 module.factory('Locations',function ($resource){
 var url = apiBaseUrl + "/locations/zipcodes/:action";
 return $resource(url, {}, {
 zipcode:{method:"GET", params:{action:"54900"}}
 });
 });
 */