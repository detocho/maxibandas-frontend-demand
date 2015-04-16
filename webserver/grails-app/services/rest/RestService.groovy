package rest

import org.codehaus.groovy.grails.commons.DefaultGrailsApplication
import grails.converters.JSON
import javassist.NotFoundException
import net.sf.json.JSONNull
import org.codehaus.groovy.grails.web.json.JSONObject
import demand.exceptions.NotFoundException
import demand.exceptions.ConflictException
import demand.exceptions.BadRequestException

import grails.util.Environment
import groovyx.net.http.*
import groovyx.net.http.HTTPBuilder

import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*

import groovyx.net.http.RESTClient

import javax.servlet.http.HttpServletResponse
import grails.plugin.gson.converters.GSON




class RestService {


    static transactional = true

    def grailsApplication = new DefaultGrailsApplication()
    def urlBase = grailsApplication.config.domainMainUsers

    def urlBaseCategories   = grailsApplication.config.domainMainCategories
    def urlBaseLocations    = grailsApplication.config.domainMainLocations
    def urlBaseBands        = grailsApplication.config.domainMainBands



    def restClient  = new RESTClient(urlBase)

    def defineServiceResource(def resource){

        switch (resource){

            case 'categories':
                restClient = new RESTClient(urlBaseCategories)
                break
            case 'locations':
                restClient = new RESTClient(urlBaseLocations)
                break
            case 'bands':
                restClient = new RESTClient(urlBaseBands)
                break
            default:
                restClient = new RESTClient(urlBase)
                break

        }
    }


    def getResource(def resource, def queryParams){

        Map result = [:]



        try {

            def resp = restClient.get(path:resource, query:queryParams, requestContentType: 'application/json')

            if (resp.status == HttpServletResponse.SC_OK) {

                result.status   = resp.status
                result.data     = resp.data

            }
            else{
                result.status   = HttpServletResponse.SC_NOT_FOUND
                result.data     = []
            }
        } catch (Exception e){
            result.status   = HttpServletResponse.SC_NOT_FOUND
            result.data     = []
        }

        result


    }

    def getResource(def resource){

        Map result = [:]

        try {

            def resp = restClient.get(path: resource, requestContentType: 'application/json')

            if (resp.status == HttpServletResponse.SC_OK) {

                result.status   = resp.status
                result.data     = resp.data

            }
            else{
                result.status   = HttpServletResponse.SC_NOT_FOUND
                result.data     = []
            }
        } catch (Exception e){
            result.status   = HttpServletResponse.SC_NOT_FOUND
            result.data     = []
        }


        result


    }


    def postResource(def resource, def body){

        Map result = [:]

        try {

            def resp = restClient.post(
                    path: resource,
                    body: body,
                    requestContentType: 'application/json')

            if (resp.status == HttpServletResponse.SC_CREATED || resp.status == HttpServletResponse.SC_OK) {

                result.status = resp.status
                result.data = resp.data

            }else {

                result.status   = HttpServletResponse.SC_NOT_FOUND
                result.data     = []
            }


        }catch(Exception e){

            result.status   = HttpServletResponse.SC_NOT_FOUND
            result.data     = []

        }

        result
    }

    def postResource(def resource,def query, def body){

        Map result = [:]

        try {

            def resp = restClient.post(
                    path: resource,
                    query: query,
                    body: body,
                    requestContentType: 'application/json')

            if (resp.status == HttpServletResponse.SC_CREATED || resp.status == HttpServletResponse.SC_OK) {

                result.status = resp.status
                result.data = resp.data

            }else {

                result.status   = HttpServletResponse.SC_NOT_FOUND
                result.data     = []
            }


        }catch(Exception e){

            result.status   = HttpServletResponse.SC_NOT_FOUND
            result.data     = []

        }

        result
    }

    def putResource(def resource, def body){
        Map result = [:]



        try {

            def resp = restClient.put(
                    path : resource,
                    body : body,
                    requestContentType : 'application/json' )

            if (resp.status == HttpServletResponse.SC_CREATED || resp.status == HttpServletResponse.SC_OK) {

                result.status = resp.status
                result.data = resp.data

            }else {

                result.status   = HttpServletResponse.SC_NOT_FOUND
                result.data     = []
            }


        }catch(Exception e){

            result.status   = HttpServletResponse.SC_NOT_FOUND
            result.data     = []

        }

        result

        result
    }


}
