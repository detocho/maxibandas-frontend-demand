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

class HomeService {

    def restService
    def categoryIdGroups = 'MX1'
    def categoryIdEvents = 'MX2'
    def locationIdStates = 'MX'

    def getGroups(){

        def groups =[]

        restService.defineServiceResource('categories')
        def result = restService.getResource("/categories/"+categoryIdGroups+"/")

        if(result.status != HttpServletResponse.SC_OK){
            result.data = []
        }

        result.data.children_categories.each{
            if (it.status == 'active'){
                groups.add(

                        categoryId:it.categoryId,
                        name:it.name
                )
            }
        }

        groups

    }

    def getStates(){

        def estates =[]
        restService.defineServiceResource('locations')
        def result = restService.getResource("/locations/"+locationIdStates+"/")

        if(result.status != HttpServletResponse.SC_OK){
            result.data = []
        }

        result.data.children_locations.each{
            estates.add(

                    locationId:it.locationId,
                    name:it.name
            )
        }

        estates
    }

    def getEvents(){

        def events = []

        restService.defineServiceResource('categories')
        def result = restService.getResource("/categories/"+categoryIdEvents+"/")

        if(result.status != HttpServletResponse.SC_OK){
            result.data = []
        }

        result.data.children_categories.each{
            if (it.status == 'active'){
                events.add(

                        categoryId:it.categoryId,
                        name:it.name
                )
            }
        }

        events
    }
}
