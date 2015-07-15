'use strict'

function DemandPageController ($scope, $http, $q, $upload,  Categories, States, BestBand, BestEvent, LatestNews, SearchBands, Band) {


    $scope.generos  = [];
    $scope.events   = [];
    $scope.generos  = [];
    $scope.states   = [];

    $scope.showBestBand     = false;
    $scope.showBestEvent    = false;
    $scope.showNews         = false;

    $scope.categoryGeneros = 'MX1';
    $scope.categoryEvents  = 'MX2';
    $scope.locationId      = "MX";

    $scope.defaultLimit = 20;
    $scope.maxPageIndex = 25;
    $scope.pageOffset = 0;

    $scope.urlVideoEmbebed = 'http://www.youtube.com/embed/id_video?rel=0';


    $scope.initVBP = function(bandId){
        getBand(bandId);
        getVBPSearchBands();
    };

    $scope.initBandas = function(){

        getGeneros($scope.categoryGeneros);
        getEvents($scope.categoryEvents);
        getStates($scope.locationId);
        getSearchBands(1);

    };

    $scope.init = function(){

        getGeneros($scope.categoryGeneros);
        getEvents($scope.categoryEvents);
        getStates($scope.locationId);
        getBestBand();
        getBestEvent();
        getLatestNews();
    };

    $scope.getBandsPaginate =  function (page){
        getSearchBands(page);
    };

    $scope.getUrlVideoEmbebed = function (urlVideo){
       return $scope.urlVideoEmbebed.replace('id_video',getIdVideo(urlVideo));
    }

    function getIdVideo(urlVideo){
        var videoId = '';
        if(urlVideo){
            videoId = urlVideo.split("v=")[1];
        }
        return videoId;
    }

    function getBand(bandId){

        var params = { bandId:bandId};

        Band.get(params, function(data) {
            $scope.VBPBand = data;
        }, function(error){

            $scope.VBPBand = [];
        })
    }

    function getStartPage(page, maxPage) {
        if (maxPage <= $scope.maxPageIndex || page <= $scope.pageOffset) {
            return 1;
        }

        if (maxPage - page < $scope.pageOffset) {
            return maxPage - $scope.maxPageIndex;
        }

        return page - $scope.pageOffset;
    }

    function getEndPage(page, maxPage) {
        if (maxPage <= $scope.maxPageIndex || maxPage - page < $scope.pageOffset) {
            return maxPage;
        }

        if (page <= $scope.pageOffset) {
            return $scope.maxPageIndex;
        }

        return page + $scope.pageOffset;
    }

    function getVBPSearchBands (){

        SearchBands.get({}, function(data) {
            $scope.searchVBPBands = data.results;
        }, function(error){
            $scope.searchVBPBands = [];
        });

    }


    function getSearchBands (page){

        var offset = ($scope.defaultLimit * page) - $scope.defaultLimit;
        var params = {
            offset:offset,
            limit:$scope.defaultLimit
        };

        SearchBands.get(params, function(data) {
            $scope.pages = [];
            $scope.currentPage = page;
            $scope.maxPage = Math.ceil(data.total / data.limit);
            $scope.total = data.total;

            $scope.searchBands = data.results;

            var start = getStartPage(page, $scope.maxPage);
            var end = getEndPage(page, $scope.maxPage);

            for (var i = start; i <= end; i++) {
                $scope.pages.push(i);
            }

            $scope.offset = data.offset + 1;
            $scope.limit = data.limit + data.offset;


        }, function(error){
            $scope.searchBands = [];
        });

    }

    function getLatestNews(){

        LatestNews.get({}, function(data) {
            $scope.showNews = true;
            $scope.latestNews = data;
        }, function(error){
            $scope.showNews =false;
        });
    }

    function getBestEvent(){

        BestEvent.get({}, function(data) {
            $scope.showBestEvent = true;
            $scope.bestEvent = data;
        }, function (error){
            $scope.showBestEvent =false;
        });
    }

    function getBestBand(){

        BestBand.get({}, function(data) {
            $scope.showBestBand = true;
            $scope.bestBand = data;

        }, function (error){
            $scope.showBestBand = false;
            $scope.bestBand = [];
        });
    }

    function getEvents(categoryId){

        var params = {categoryId:categoryId};

        Categories.get(params, function (data) {
            $scope.events = data.children_categories;
        }, function (error){
            $scope.events = [];
        });
    }

    function getGeneros(categoryId){

        var params = { categoryId:categoryId};

        Categories.get(params, function(data) {
            $scope.generos = data.children_categories;
        }, function (error){
            $scope.generos = [];
        });
    }

    function getStates(locationId){
        var params = { locationId:locationId};

        States.get(params, function(data) {
            $scope.states = data.children_locations;
        }, function(error){

            $scope.states = [];
        })
    }

}


    /*
    $scope.saludo = "Hola Angular";

    $scope.zipcodeData      = '';
    $scope.zipcodeValue     = '';
    $scope.zipcodeError     = '';
    $scope.cols             = '';
    $scope.isValidZipcode   = false;

    $scope.isValidVideo     = false;
    $scope.urlVideoEmbed    = '';
    $scope.urlPic           = [];
    $scope.picturesJson     = [];

    $scope.socialEventsData = '';
    $scope.stateEventsData  = '';


    $scope.errorName        = false;
    $scope.errorCategory    = false;
    $scope.errorPrice       = false;
    $scope.errorLocationId  = false;
    $scope.errorEmail       = false;
    $scope.errorPhones      = false;
    $scope.errorVideo       = false;
    $scope.errorZipcode     = false;


    $scope.resizeMaxHeight  = 768;
    $scope.resizeMaxWidth   = 1024;
    $scope.resizeQuality    = 0.7;
    $scope.resizeType       = 'image/jpeg';


    $scope.stateEvents = function(){
        var params = {};
        States.stateEvents(params, function (data){
            $scope.stateEventsData = data.children_locations;
        }, function (error) {
            $scope.stateEventsData = '';
        });
    };

    $scope.stateEvents();

    $scope.socialEvents = function(){
        var params = {};
        Categories.socialEvents(params, function (data){
            $scope.socialEventsData = data.children_categories;
        }, function (error) {
            $scope.socialEventsData = '';
        });
    };

    $scope.socialEvents();

    $scope.searchZipcodes = function() {
        var params = {
            action:$scope.zipcodeValue
        };
        Locations.zipcode(params, function (data) {
            $scope.zipcodeError     = '';
            $scope.zipcodeData      = data;
            $scope.cols             = data.neighborhoods;
            $scope.isValidZipcode   = true;
        }, function (error) {
            $scope.isValidZipcode   = false;
            $scope.zipcodeData      = '';
            $scope.zipcodeError     = "Codigo postal = "+$scope.zipcodeValue+" no encontrado";
        });
    };

    $scope.embedVideo = function (){
        $scope.isValidVideo = false;
        var urlVideo = $scope.urlVideo;
        if(urlVideo.indexOf("www.youtube.com") > 0) {
            var elem = urlVideo.split('v=');
            if (elem[1]) {
                var videoId     = elem[1];
                var urlEmbed    = "http://www.youtube.com/embed/video_id?rel=0&showinfo=0&controls=1";
                $scope.urlVideoEmbed = urlEmbed.replace("video_id", videoId);
                $scope.isValidVideo = true;
            }
        }
    };

    $scope.isAdjacentState = function (arrayStatesAdjacent, currentState){
        if(arrayStatesAdjacent) {
            var searchState = arrayStatesAdjacent.indexOf(currentState);
            if (searchState > 0) {
                return true;
            } else {
                return false;
            }
        }
    };

    var URL = window.URL || window.webkitURL;


    var fileToDataURL = function (file) {
        var deferred = $q.defer();
        var reader = new FileReader();
        reader.onload = function (e) {
            deferred.resolve(e.target.result);
        };
        reader.readAsDataURL(file);
        return deferred.promise;
    };

    var getResizeArea = function () {
        var resizeAreaId = 'fileupload-resize-area';
        var resizeArea = document.getElementById(resizeAreaId);
        if (!resizeArea) {
            resizeArea = document.createElement('canvas');
            resizeArea.id = resizeAreaId;
            resizeArea.style.visibility = 'hidden';
            document.body.appendChild(resizeArea);
        }
        return resizeArea;
    }

    var resizeImage = function (origImage,indexPicture) {
        var maxHeight   = $scope.resizeMaxHeight ;
        var maxWidth    = $scope.resizeMaxWidth ;
        var quality     = $scope.resizeQuality ;
        var type        = $scope.resizeType ;

        var canvas = getResizeArea();

        var height  = origImage.height;
        var width   = origImage.width;

        if (width > height) {
            if (width > maxWidth) {
                height = Math.round(height *= maxWidth / width);
                width = maxWidth;
            }
        } else {
            if (height > maxHeight) {
                width = Math.round(width *= maxHeight / height);
                height = maxHeight;
            }
        }

        canvas.width = width;
        canvas.height = height;

        var ctx = canvas.getContext("2d");
        ctx.drawImage(origImage, 0, 0, width, height);

        uploadImageApiPictures(canvas.toDataURL(type, quality), indexPicture);
        return canvas.toDataURL(type, quality);
    };

    var createImage = function(url, callback) {
        var image = new Image();
        image.onload = function() {
            callback(image);
        };
        image.src = url;
    };

    var doResizing = function(imageResult,indexPicture, callback) {
        createImage(imageResult.url, function(image) {
            var dataURL = resizeImage(image, indexPicture);
            imageResult.resized = {
                dataURL: dataURL,
                type: dataURL.match(/:(.+\/.+);/)[1],
            };
            callback(imageResult);
        });
    };

    var applyScope = function(imageResult) {
        $scope.$apply(function() {
            $scope.image = imageResult;
        });
    };

    function dataURLtoBlob(dataurl) {
        var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1],
            bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
        while(n--){
            u8arr[n] = bstr.charCodeAt(n);
        }
        return new Blob([u8arr], {type:mime});
    }

    var uploadImageApiPictures = function(urlDataImage, indexPicture){

        var blob = dataURLtoBlob(urlDataImage);

        $scope.urlPic[indexPicture] = 'http://publica.maxibanda.mx/publica/loading_picture.gif';

        $scope.upload = $upload.upload({

            url: apiBaseUrlImages, //upload.php script, node.js route, or servlet url
            method: 'POST',
            data: {myObj: $scope.myModelObj},
            file: blob
        }).progress(function (evt) {
            console.log('percent: ' + parseInt(100.0 * evt.loaded / evt.total));
        }).success(function (data, status, headers, config) {
            $scope.urlPic[indexPicture] = data.pictures[1].url;
            //TODO debemos revisar como hacemos para cuando quieren modificar una fotografia antes de subirla
            $scope.picturesJson.push({
                picture_id :data.id,
                url : data.pictures[1].url,
                size : '200x160',
                secure_url : ''});
            console.log ('el array ahora tiene = '+ JSON.stringify($scope.picturesJson));
        });

        //.error(...)
        //.then(success, error, progress);
        // access or attach event listeners to the underlying XMLHttpRequest.
        //.xhr(function(xhr){xhr.upload.addEventListener(...)})

    };


    $scope.onFileSelect = function($files, indexPicture) {

        for (var i = 0; i < $files.length; i++) {
            var file = $files[i];
            var imageResult = {
                file: $files[i],
                url: URL.createObjectURL($files[i])
            };

            fileToDataURL($files[i]).then(function (dataURL) {
                imageResult.dataURL = dataURL;
            });

            if($scope.resizeMaxHeight || $scope.resizeMaxWidth) {
                doResizing(imageResult,indexPicture, function(imageResult) {
                    applyScope(imageResult);
                });
            }
            else {
                applyScope(imageResult);
            }

        }
    }


    $scope.createBand = function (){

        console.log('vamos a crear la banda aqui comienzan las validaciones');

        console.log ('imprimiendo valores capturados');

        console.log('categoryID = '+$scope.categoryId);
        console.log('nombre = '+$scope.name);
        console.log('price = '+$scope.price);
        console.log('payForm = '+$scope.payForm);
        console.log('locationId = '+$scope.locationId);
        console.log('email = '+$scope.email);
        console.log('phones = '+$scope.phones);
        console.log('video = '+$scope.urlVideo);
        console.log('description = '+$scope.description);
        console.log('pictures = '+ JSON.stringify($scope.picturesJson));

        $scope.errorName        = false;
        $scope.errorCategory    = false;
        $scope.errorPrice       = false;
        $scope.errorLocationId  = false;
        $scope.errorEmail       = false;
        $scope.errorPhones      = false;
        $scope.errorZipcode     = false;


    }



}

function PasswordController ($scope, $http, $upload, Locations, Bands, Categories,States){

}

*/
/*

 function resizeImagen(file) {
 var MAX_IMAGE_SIZE_PROCESS = 900;


 var reader = new FileReader();
 reader.onloadend = function () {
 var tempImg = new Image();
 tempImg.onload = function () {
 // Comprobamos con el aspect cómo será la reducción
 // MAX_IMAGE_SIZE_PROCESS es la N que definimos como máxima
 var MAX_WIDTH = MAX_IMAGE_SIZE_PROCESS;
 var MAX_HEIGHT = MAX_IMAGE_SIZE_PROCESS;
 var tempW = tempImg.width;
 var tempH = tempImg.height;
 if (tempW > tempH) {
 if (tempW > MAX_WIDTH) {
 tempH *= MAX_WIDTH / tempW;
 tempW = MAX_WIDTH;
 }
 } else {
 if (tempH > MAX_HEIGHT) {
 tempW *= MAX_HEIGHT / tempH;
 tempH = MAX_HEIGHT;
 }
 }

 // Creamos un canvas para la imagen reducida y la dibujamos
 var resizedCanvas = document.createElement('canvas');
 resizedCanvas.width = tempW;
 resizedCanvas.height = tempH;
 var ctx = resizedCanvas.getContext("2d");
 ctx.drawImage(this, 0, 0, tempW, tempH);
 var dataURL = resizedCanvas.toDataURL("image/jpeg");

 // Pasamos la dataURL que nos devuelve Canvas a objeto Blob
 // Envíamos por Ajax el objeto Blob
 // Cogiendo el valor de photo (nombre del input file)
 var file = dataURLtoBlob(dataURL);
 console.log("EL peso de la nueva imagen es"+file.size);
 var fd = new FormData();
 fd.append("photo", file);
 */
/*
 $.ajax({
 url: <<url del endpoint que se encarga de la subida>>,
 type: "POST",
 data: fd,
 processData: false,
 contentType: false,
 dataType: 'json',
 xhr: function() {
 var xhr = new window.XMLHttpRequest();
 xhr.upload.addEventListener("progress", function(evt) {
 if (evt.lengthComputable) {
 // Calculando el porcentaje de todo el proceso
 var percentComplete = evt.loaded / evt.total;
 progress(percentComplete * PERCENT_UPLOAD * 0.01);
 }
 }, false);
 return xhr;
 }
 }).done(function(respond) {
 // Una vez ha acabado la subida
 callback(respond);
 });
 };*/
/*
 tempImg.src = reader.result;
 }
 reader.readAsDataURL(file);
 }
 }

 */
/*
 function dataURLtoBlob(dataURL)
 {
 // Decodifica dataURL
 var binary = atob(dataURL.split(',')[1]);
 // Se transfiere a un array de 8-bit unsigned
 var array = [];
 var length = binary.length;
 for(var i = 0; i < length; i++) {
 array.push(binary.charCodeAt(i));
 }
 // Retorna el objeto Blob
 return new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
 }
 */