class UrlMappings {

	static mappings = {

        "/" (controller:'Home',action:'Index')

        "/bandas/" (controller: 'Search', action:'Index')

        "/banda/$bandId?" (controller:'VBP', action:'Index')

        "/noticias" (view:'/noticias/index')
        "/eventos" (view:'/eventos/index')

        "/ayuda/preguntas-frecuentes" (view:'/ayuda/faqs')
        "/ayuda/avisos-de-privacidad" (view:'/ayuda/privacidad')
        "/ayuda/terminos-y-condiciones" (view:'/ayuda/terminos')

        "500"(view:'/error')
        "404"(view:'/notFound')


	}
}
