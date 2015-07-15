<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>maxibandas.com.mx</title>
	</head>
	<body>
    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div ng-controller="DemandPageController"  data-ng-init="init()">
    <div class="jumbotron background-home">
        <div class="container">
            <h1>Busca tu banda!</h1>
            <p>Elige entre las bandas disponibles para ambientar tu evento.Es facil, rapido y seguro!!!</p>
            <br><br>
            <form class="form-inline" action="/bandas">
                <div class="form-group">
                    <select class="form-control input-lg">
                        <option>¿Que tipo de música?</option>

                        <option ng-repeat="genero in generos" value={{genero.category_id}}>{{genero.name}}</option>

                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control input-lg">
                        <option>¿En donde?</option>


                        <option ng-repeat="state in states" value="{{state.category_id}}">{{state.name}}</option>

                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control input-lg">
                        <option>¿Para que evento?</option>

                        <option ng-repeat="event in events" value="{{event.category_id}}">{{event.name}}</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-warning btn-lg">Buscar</button>
            </form>
        </div>
    </div>

    <div class="container">
        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <h2>Publica tu banda</h2>
                    <p>Cientos de miles de usuarios, estan buscando grupos y bandas de musica para amenizar su evento, <b>no pierdas la oprtunidad</b> de dar un gran paso al <b>exito</b>, si tienes una banda o grupo musical públicala ahora, es muy sencillo y ademas es <b>gratis!!</b></p>
                    <p><a class="btn btn-warning" href="${grailsApplication.config.domainMainPYB}" role="button">Publicar &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <h2>Eventos</h2>
                    <p>Miles de eventos musicales se llevaran acabo en <b>toda la republica mexicana</b>, no pierdas tiempo, registra tu banda y contacta a los organizadores de eventos para tener una oportunidad de que <b>todo México te conozca</b>.Si tienes un evento y queires darlo a conocer, esta seccion tambien es para tí</p>
                    <p><a class="btn btn-warning" href="${grailsApplication.config.domainMainEvents}" role="button">Ver eventos &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <h2>Noticias</h2>
                    <p>Consulta las novendades de las <b>bandas de cada region</b>, asi como las novedades de las bandas mas famosas de México, presentaciones, horarios, lugares, ventas de <b>boletos</b>, firmas de <b>autografos</b> en tu localidad y mas..</p>
                    <p><a class="btn btn-warning" href="${grailsApplication.config.domainMainNews}" role="button">Ver noticias&raquo;</a></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="row featurette" ng-show="showBestBand">
                <div class="col-md-7">
                    <h2 class="featurette-heading"> <span class="text-muted">Banda de la semana.</span> {{bestBand.title}} </h2>
                    <p class="lead">{{bestBand.description}}</p>
                    <p><a class="btn btn-warning" href="/banda/{{bestBand.band_id}}" role="button">Ver mas&raquo;</a></p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block" src="{{bestBand.pictures[0].url}}" alt="Banda de la semana">
                </div>
            </div>

            <hr class="featurette-divider" >

            <div class="row featurette" ng-show="showBestEvent">
                <div class="col-md-7 col-md-push-5">
                    <h2 class="featurette-heading"><span class="text-muted">Evento de la semana.</span>{{bestEvent.title}}</h2>
                    <p class="lead">{{bestEvent.summary}}</p>
                    <p><a class="btn btn-warning" target="_blank" href="{{bestEvent.link}}" role="button">Ver mas&raquo;</a></p>
                </p>

                </div>
                <div class="col-md-5 col-md-pull-7">
                    <img class="featurette-image img-responsive center-block" src="{{bestEvent.url_picture}}" alt="Generic placeholder image">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette" ng-show="showNews">
                <div class="col-md-7">
                    <h2 class="featurette-heading"><span class="text-muted">Noticia del día.</span>{{latestNews.title}}</h2>
                    <p class="lead">{{latestNews.summary}}</p>
                    <p><a class="btn btn-warning" target="_blank" href="{{latestNews.link}}" role="button">Ver mas&raquo;</a></p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block" src="{{latestNews.url_picture}}" alt="Generic placeholder image">
                </div>
            </div>

            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->

            <mb:footer name="footer"  />

        </div><!-- /.container -->

    </div><!-- termina el div del controller -->

	</body>
</html>
