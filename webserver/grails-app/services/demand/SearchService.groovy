package demand

import java.text.MessageFormat
import org.apache.ivy.plugins.conflict.ConflictManager
import grails.converters.*
import demand.exceptions.NotFoundException
import demand.exceptions.ConflictException
import demand.exceptions.BadRequestException

import org.joda.time.LocalTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

import javax.servlet.http.HttpServletResponse

class SearchService {

    def restService

    def getSearch(def params){

        Map SEARCH_PARAMS_MAP = [
                status:"active"
        ]

        restService.defineServiceResource('bands')
        def result = restService.getResource("/bands/search/", SEARCH_PARAMS_MAP)

        if(result.status != HttpServletResponse.SC_OK){
            result.data = []
        }

        result.data

    }

}
