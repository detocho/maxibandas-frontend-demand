package home
import org.codehaus.groovy.grails.commons.DefaultGrailsApplication

class MaxibandasTagLib {

    static namespace = "mb"

    def grailsApplication = new DefaultGrailsApplication()

    def urlPublica      = grailsApplication.config.domainMainPYB
    def urlNoticias     = '/noticias'
    def urlEventos      = '/eventos'
    def urlFaqs         = '/ayuda/preguntas-frecuentes'
    def urlPrivacidad   = '/ayuda/avisos-de-privacidad'
    def urlTerminos     = '/ayuda/terminos-y-condiciones'


    def header = { attr, body ->

        out << " <header class='slide'>"
        out << "<ul id='navToggle' class='button slide'>"
        out << "<li></li><li></li><li></li>"
        out << "</ul>"
        out << "<a href='/' > <h1 class='logo'> Tu banda está aquí </h1> </a>"

        out << "</header>"

        out << "<nav class='slide'>"
        out << "<ul>"
        out << "<li>"
        out << "<form name='searchMain' action='/listado?' >"
        out << "<input type='text' class='caja_search_header'/>"
        out << "<button type='submit' id='buttonSearch' value='' onclick='return true;'>"
        out << "<span class='button-search-component'>Buscar</span></button>"
        out << "</form>"
        out << "    </li>"
        out << "<li>"
        out << "<a href='${urlNoticias}'>Noticias</a>"
        out << "    </li>"
        out << "<li>"
        out << "<a href='${urlEventos}'>Eventos</a>"
        out << "    </li>"
        out << "<div class='anuncia'>"
        out << "<div class='ribbon'><h5>¡GRATIS!</h5></div>"
        out << "<li>"
        out << "<a class='upload' href='${urlPublica}'>Inscribe tu Banda <b>¡GRATIS!</b></a>"
        out << "</li>"
        out << "        <div class='triangle-l'></div>"
        out << "<div class='triangle-r'></div>"
        out << "    </div>"
        out << "</ul>"
        out << "</nav>"
    }

    def footer = { attr, body ->

        out << "<footer>"
        out << "<div class='foo_up'>"

        out << "    <p class='copyright'>"
        out << "        <b>Todos los derechos reservados</b>"
        out << "        <br>"
        out << "        maxibandas.com.mx."
        out << "    </p>"

        out << "    <ul class='foo_nav'>"
        out << "        <li>"
        out << "            <a href='${urlFaqs}'>Preguntas Frecuentes</a>"
        out << "        </li>"
        out << "        <li>"
        out << "            <a href='${urlTerminos}'>Términos de Uso</a>"
        out << "        </li>"
        out << "        <li>"
        out << "            <a href='${urlPrivacidad}'>Aviso de Privacidad</a>"
        out << "        </li>"
        out << "    </ul>"
        out << "</div>"
        out << "</footer>"

    }

}
