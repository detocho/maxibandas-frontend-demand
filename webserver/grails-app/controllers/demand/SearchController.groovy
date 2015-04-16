package demand

class SearchController {

    def searchService

    def index() {

        def bands = searchService.getSearch(params)

        def model = [
                "bands"     :bands.results,
                "total"     :bands.total,
                "offset"    :bands.offset,
                "limit"     :bands.limit
        ]

        render (view:'index', model:model)

    }
}
