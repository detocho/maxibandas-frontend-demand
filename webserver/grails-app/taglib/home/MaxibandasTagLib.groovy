package home
import org.codehaus.groovy.grails.commons.DefaultGrailsApplication

class MaxibandasTagLib {

    static namespace = "mb"

    def grailsApplication = new DefaultGrailsApplication()

    def urlPublica      = grailsApplication.config.domainMainPYB
    def urlCuenta       = grailsApplication.config.domainMainCuenta
    def urlNoticias     = '/noticias'
    def urlEventos      = '/eventos'
    def urlFaqs         = '/ayuda/preguntas-frecuentes'
    def urlPrivacidad   = '/ayuda/avisos-de-privacidad'
    def urlTerminos     = '/ayuda/terminos-y-condiciones'


    def headerLight = { attr, body ->

        out << "<nav class='navbar navbar-fixed-top navbar-inverse'>"
        out << "    <div class='container'>"
        out << "        <div class='navbar-header'>"
        out << "            <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>"
        out << "                <span class='sr-only'>Toggle navigation</span>"
        out << "                <span class='icon-bar'></span>"
        out << "                <span class='icon-bar'></span>"
        out << "                <span class='icon-bar'></span>"
        out << "            </button>"
        out << "            <a class='navbar-brand' href='/'><img class='logo' src='/images/logo.png'></a>"
        out << "        </div>"
        out << "        <div id='navbar' class='navbar-collapse collapse'>"
        out << "            <ul class='nav navbar-nav navbar-right'>"
        out << "                <li><a href='${urlCuenta}'><span class='glyphicon glyphicon-user' aria-hidden='true'></span></a></li>"
        out << "                <li><a href='${urlNoticias}'>Noticias</a></li>"
        out << "                <li><a href='${urlEventos}'>Eventos</a></li>"
        out << "                <li class='active'><a href='${urlPublica}'>Publica Gratis</a></li>"
        out << "            </ul>"
        out << "        </div><!-- /.nav-collapse -->"
        out << "    </div><!-- /.container -->"
        out << "</nav><!-- /.navbar -->"

    }

    def header = { attr, body ->

        out << "<nav class='navbar navbar-fixed-top navbar-inverse'>"
        out << "<div class='container'>"
        out << "<div class='navbar-header'>"
        out << "<button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>"
        out << "<span class='sr-only'>Toggle navigation</span>"
        out << "  <span class='icon-bar'></span>"
        out << "<span class='icon-bar'></span>"
        out << "  <span class='icon-bar'></span>"
        out << "</button>"
        out << "<a class='navbar-brand' href='/'><img class='logo' src='/images/logo.png'></a>"
        out << "</div>"
        out << "<div id='navbar' class='navbar-collapse collapse'>"
        out << "<ul class='nav navbar-nav navbar-right'>"
        out << "  <li><a href='${urlCuenta}'><span class='glyphicon glyphicon-user' aria-hidden='true'></span></a></li>"
        out << "<li><a href='${urlNoticias}'>Noticias</a></li>"
        out << "<li><a href='${urlEventos}'>Eventos</a></li>"
        out << "<li class='active'><a href='${urlPublica}'>Publica Gratis</a></li>"
        out << "</ul>"

        out << "<form class='navbar-form navbar-left'>"
        out << "  <div class='form-group'>"
        out << "    <div class='row'>"
        out << "      <div class='col-lg-6'>"
        out << "        <div class='input-group'>"
        out << "          <input type='text' class='form-control input-text-search-header' placeholder='Busca una banda...'>"
        out << "          <span class='input-group-btn'>"
        out << "            <button class='btn btn-default' type='button'>Buscar</button>"
        out << "</span>"
        out << "        </div><!-- /input-group -->"
        out << "      </div><!-- /.col-lg-6 -->"
        out << "    </div><!-- /.row -->"
        out << "  </div>"

        out << "</form>"

        out << "</div><!-- /.nav-collapse -->"
        out << "</div><!-- /.container -->"
        out << "</nav><!-- /.navbar -->"

    }

    def footer = { attr, body ->

        out << "<footer>"
        out << "    <p class='pull-right'><a href='#'>Inicio</a></p>"
        out << "    <p>&copy; 2015 maxibandas, Inc. &middot; <a href='${urlPrivacidad}'>Privacidad</a> &middot; <a href='${urlTerminos}'>Terminos y condiciones</a></p>"
        out << "</footer>"

    }

}
