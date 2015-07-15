<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>VBP</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mb_VBP.css')}" type="text/css">
</head>
<body>

<div class="container" ng-controller="DemandPageController" data-ng-init="initVBP(1)">

<div class="row row-offcanvas row-offcanvas-right">

<div class="col-xs-12 col-sm-8">

<div class="jumbotron">
    <div id="carousel-detalle" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-detalle" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-detalle" data-slide-to="1"></li>
            <li data-target="#carousel-detalle" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="{{getUrlVideoEmbebed(VBPBand.url_videos[0])}}" frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="carousel-caption">
                    {{VBPBand.name}}
                </div>
            </div>
            <div class="item">
                <img src="images/banda_1.jpg" alt="title band imagen 1" width="100%" >
                <div class="carousel-caption">
                    {{VBPBand.name}}
                </div>
            </div>
            <div class="item">
                <img src="images/banda_3.jpg" alt="title band imagen 2" width="100%">
                <div class="carousel-caption">
                    {{VBPBand.name}}
                </div>
            </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-detalle" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-detalle" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>


<div class="panel panel-default">
    <div class="panel-body ">



        <h3 class="media-heading">{{VBPBand.title}} <small>Anuncio:MB{{VBPBand.band_id}} - Publicado: {{VBPBand.date_registration | date:'dd/MMM/yyyy'}}</small></h3>
        <address>
            <strong>Género:</strong>{{VBPBand.category_id}}<br>
            <strong>Tel.: </strong>{{VBPBand.contact.name}}<br>
            <strong>Contactar a: </strong>{{VBPBand.contact.phone}}<br>
            <strong>Desde: </strong><span class="precio">{{VBPBand.price_min  | noFractionCurrency}}</span><br>
        </address>

        <div class="row">
            <div class="col-md-6">
                <strong>Eventos en los que toca</strong>
                <ul class="list-unstyled">
                    <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>{{VBPBand.events_types}}</li>


                </ul>
            </div>
            <div class="col-md-6">
                <strong>Estados en los que toca</strong>
                <ul class="list-unstyled">
                    <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>{{VBPBand.service_locations[0].name}}</li>
                    <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>{{VBPBand.service_locations[1].name}}</li>

                </ul>
            </div>
        </div>

        <address>
            <strong>Descripcion:</strong><br>
            <p class="text-left">
                {{VBPBand.description}}
            </p>
        </address>

        <div class="row">
            <div class="col-lg-12">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Escribe tu consulta al manager de la banda ...">

                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Consultar</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->



    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Comentarios</h3>
    </div>
    <div class="panel-body">

        <div class="row">
            <div class="col-lg-12">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Escribe tu comentario ...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Comentar</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->


        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

        <div class="media">

            <div class="media-left media-top">
                <a href="#">
                    <img class="media-object" src="images/thumb3.jpg" alt="picture_user">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Banda tierra sagrada</h4>
                Aquí colocamos el comentario de la banda, podemos agregar cuanto texto sea necesario ya despues podemos ver que mas agregamos ...
            </div>
        </div>

    </div>
</div>

<div class="row">




</div><!--/row-->
</div><!--/.col-xs-12.col-sm-9-->

<!--<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">-->

<div class="col-xs-12 col-sm-4  blog-sidebar">

    <div class="sidebar-module sidebar-module-inset">
        <h4><small>[publicidad]</small></h4>
        <div class="panel panel-default">
            <div class="panel-body ">
                <a href="#">
                    <img src="http://images.clipartlogo.com/files/ss/original/122/122747038/cowboy-boots-and-western-hat.jpg" width="100%"/>
                </a>
            </div>
        </div>
        <br>
    </div>

    <div class="sidebar-module">
        <h4>Bandas similares</h4>
        <div class="list-group">
            <a href="#" class="list-group-item" ng-repeat="searchVBPBand in searchVBPBands">
                <div class="media-left">
                    <img class="media-object" src="images/mb_min.png" alt="banda">
                </div>
                <div class="media-body">
                    <h5 class="media-heading"><strong>{{searchVBPBand.title}}</strong></h5>
                    <span class="precio-recomendado">Desde {{searchVBPBand.price_min | noFractionCurrency}}</span><br>
                    <small>{{searchVBPBand.location.parent_location[2].name}}</small>
                </div>
            </a>

        </div>
    </div>
    <div class="sidebar-module">
        <h4>Eventos</h4>
        <ol class="list-unstyled">
            <li><a href="#">Eventos del mes</a></li>
            <li><a href="#">Eventos donde participa la banda</a></li>
            <li><a href="#">Pagina web de la banda</a></li>
        </ol>
    </div>
</div> <!-- /.blog-sidebar -->

<!--</div>--><!--/.sidebar-offcanvas-->
</div><!--/row-->

<hr>

<mb:footer name="footer"  />

</div><!--/.container-->


</body>
</html>
