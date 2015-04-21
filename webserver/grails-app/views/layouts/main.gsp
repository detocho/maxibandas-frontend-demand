<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 600px)">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-status-bar-style" content="brown">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mb.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources />
</head>

<body>

<div class="mb">
    <header class="slide">
        <ul id="navToggle" class="button slide">
            <li></li><li></li><li></li>
        </ul>
        <a href="/" > <h1 class="logo"> Tu banda está aquí </h1> </a>

    </header>

    <nav class="slide">
        <ul>
            <li>
                <a href="#">Noticias</a>
            </li>
            <li>
                <a href="#">Eventos</a>
            </li>
            <div class="anuncia">
                <div class="ribbon"><h5>¡GRATIS!</h5></div>
                <li>
                    <a class="upload" href="#">Inscribe tu Banda <b>¡GRATIS!</b></a>
                </li>
                <div class="triangle-l"></div>
                <div class="triangle-r"></div>
            </div>
        </ul>
    </nav>

    <div class="content slide">
        <g:layoutBody/>
    </div>
    <footer>
        <div class="foo_up">

            <p class="copyright">
                <b>Todos los derechos reservados</b>
                <br>
                maxibandas.com.mx.
            </p>

            <ul class="foo_nav">
                <li>
                    <a href="#">Preguntas Frecuentes</a>
                </li>
                <li>
                    <a href="#">Términos de Uso</a>
                </li>
                <li>
                    <a href="#">Aviso de Privacidad</a>
                </li>
            </ul>
        </div>
    </footer>
</div>


<!-- Scripts -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="${resource(dir: 'js', file: 'trunk.js')}"></script>
<script type="text/javascript">
    $('a').click(function() {
        $('html, body').animate({
            scrollTop : $($(this).attr('href')).offset().top
        }, 500);
        return false;
    });
    $(window).on("scroll", function() {
        if ($(this).scrollTop() > 280) {
            $("#menu").addClass("yellow");
        } else {
            $("#menu").removeClass("yellow");
        }
    });
</script>
<!--[if lt IE 9]>
		<script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
		<![endif]-->
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>


