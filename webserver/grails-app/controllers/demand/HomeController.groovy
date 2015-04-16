package demand

class HomeController {

    def homeService

    def index() {

        def states = homeService.getStates()
        def groups  = homeService.getGroups()
        def events  = homeService.getEvents()


        def model = [
                "states":states,
                "groups":groups,
                "events":events
        ]


        render (view:'index', model:model)
    }
}
