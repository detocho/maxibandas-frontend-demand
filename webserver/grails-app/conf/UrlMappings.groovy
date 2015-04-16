class UrlMappings {

	static mappings = {

        "/" (controller:'Home',action:'Index')

        "/listado/" (controller: 'Search', action:'Index')

        "/banda/$bandId?" (controller:'VBP', action:'Index')


	}
}
