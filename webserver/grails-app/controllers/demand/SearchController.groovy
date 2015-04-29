package demand

class SearchController {

    def searchService
    def homeService

    def index() {

        def bands = searchService.getSearch(params)

        def states = homeService.getStates()
        def groups  = homeService.getGroups()
        def events  = homeService.getEvents()

        def model = [
                "bands"     :bands.results,
                "total"     :bands.total,
                "offset"    :bands.offset,
                "limit"     :bands.limit,
                "states"    :states,
                "groups"    :groups,
                "events"    :events
        ]

        render (view:'index', model:model)

    }
}
