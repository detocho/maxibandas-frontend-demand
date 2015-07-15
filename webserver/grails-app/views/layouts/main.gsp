<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="True">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://getbootstrap.com/examples/offcanvas/offcanvas.css">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mb.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources />
</head>

<body ng-app="DemandPage" >

    <mb:header name="header"  />


    <g:layoutBody/>



<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>


<script src="${resource(dir: 'js', file: 'angular.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'angular-resource.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'underscore-min.js')}"></script>
<script src="${resource(dir: 'js', file: 'angular-file-upload.js')}"></script>
<script src="${resource(dir: 'js', file: 'angular-file-upload-shim.js')}"></script>
<script src="${resource(dir: 'js', file: 'app.js')}"></script>
<script src="${resource(dir: 'js', file: 'controller.js')}"></script>
<script src="${resource(dir: 'js', file: 'service.js')}"></script>
<script>
    var apiBaseUrl     = "http://" + document.domain + "\\:8888";
    var apiBaseUrlLocations     = "http://" + document.domain + "\\:8888";
    var apiBaseUrlCategories    = "http://" + document.domain + "\\:8888";
    var apiBaseUrlImages        = "http://" + document.domain + ":8080/pictures/";
</script>

<script type="text/javascript">

    $( document ).ready(function() {
        $('.carousel').carousel({
            interval:false
        });
    });

</script>

<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>


