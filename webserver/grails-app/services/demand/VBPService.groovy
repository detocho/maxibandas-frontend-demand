package demand

import rest.RestService

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

class VBPService {


    def restService = new RestService()
    def searchService

    def getBand(def params){

        def bandId = params.bandId

        restService.defineServiceResource('bands')
        def result = restService.getResource("/bands/"+bandId+"/")

        if(result.status != HttpServletResponse.SC_OK){
            result.data = []
        }

        result.data

    }

    def getRecommended (def params){

        Map SEARCH_PARAMS_MAP = [
                status:"active"
        ]
        def result

        try {
            restService.defineServiceResource('bands')
            result = restService.getResource("/bands/search/", SEARCH_PARAMS_MAP)

            if (result.status != HttpServletResponse.SC_OK) {
                result.data = []
            }
        }catch(Exception e){
            result.data= []
        }

        result.data
    }

    def getNameCategory(def categoryId){

        def result

        try {
            restService.defineServiceResource('categories')
            result = restService.getResource("/categories/"+categoryId)

            if (result.status != HttpServletResponse.SC_OK) {
                result.data = []
            }
        }catch(Exception e){
            result.data= []
        }

        result.data
    }
}
