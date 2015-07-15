<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search </title>
    <link rel="stylesheet" href="http://getbootstrap.com/examples/dashboard/dashboard.css"/>
</head>
<body>


<div class="container-fluid" ng-controller="DemandPageController" data-ng-init="initBandas()" >
    <div class="row" >
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="title">Bandas</li>
                <li class="subtitle">
                    <!-- Single button -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning dropdown-toggle button-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tipo de musica <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ng-repeat="genero in generos"><a href="#">{{genero.name}}</a></li>
                        </ul>
                    </div>
                </li>
                <li class="subtitle">
                    <!-- Single button -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning dropdown-toggle button-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Estado <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ng-repeat="state in states"><a href="#">{{state.name}}</a></li>
                        </ul>
                    </div>
                </li>
                <li class="subtitle">
                    <!-- Single button -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning dropdown-toggle button-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Para  <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ng-repeat="event in events"><a href="#">{{event.name}}</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
            <ul class="nav nav-sidebar">
                <li class="title">Eventos</li>
                <li class="subtitle">
                    <!-- Single button -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning dropdown-toggle button-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tipo de evento <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Feria Regional</a></li>
                            <li><a href="#">Concierto</a></li>
                            <li><a href="#">Estadios</a></li>
                            <li><a href="#">Palenques</a></li>
                        </ul>
                    </div>
                </li>
                <li class="subtitle">
                    <!-- Single button -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-warning dropdown-toggle button-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Lugar de evento  <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ng-repeat="state in states"><a href="#">{{state.name}}</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>


        <div class="col-sm-auto col-sm-offset-3 col-md-auto col-md-offset-2 main">


            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-auto col-lg-6">
                        <ol class="breadcrumb">
                            <li><a href="#">Banda</a></li>
                            <li><a href="#">Baja California Sur</a></li>
                            <li class="active">Para Bodas</li>
                        </ol>
                    </div>
                    <div class="col-xs-auto col-lg-6">
                        <ul class="breadcrumb navbar-right">
                            <li>Bandas: <b>{{offset}}</b> - <b>{{limit}}</b> de <b>{{total}}</b><li>
                        </ul>
                    </div>
                </div>
            </div>


            <h1 class="page-header"></h1>
            <div class="row">
                <div class="col-xs-auto col-lg-3" ng-repeat="band in searchBands">
                    <div class="thumbnail">
                        <a href="/banda/{{band.band_id}}" class="link-search-thumbnail" >
                            <img src="images/banda_2.jpg" alt="...">
                            <div class="caption">
                                <h3>{{band.name}} </h3>
                                <p class="precio">Desde <span>{{band.price_min | noFractionCurrency}}</span></p>
                                <p class="estado">{{band.location.parent_location[1].name}}<p>
                            </div>
                        </a>
                    </div>
                </div><!--/.col-xs-6.col-lg-4-->
            </div><!--/row-->

            <nav ng-show="maxPage > 1">
                <ul class="pagination">
                    <li ng-click="getBandsPaginate(currentPage - 1)" ng-show="currentPage > 1">
                        <a type="prev" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
                    </li>

                    <li ng-repeat="page in pages" ng-click="getBandsPaginate(page)">
                        <a href="#">{{page}} <span class="sr-only">(current)</span></a>
                    </li>

                    <li ng-click="getBandsPaginate(currentPage + 1)" ng-show="currentPage < maxPage">
                        <a href="#" aria-label="Next" type="next" >
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>

            <mb:footer name="footer"  />
        </div><!--/.col-xs-12.col-sm-9-->
    </div>
</div>

</body>
</html>
