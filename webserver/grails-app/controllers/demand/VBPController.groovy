package demand

class VBPController {

    def vbpService = new VBPService()

    def index() {

        def band =vbpService.getBand(params)

        def model = [
                "band"     :band
        ]

        render (view:'index', model:model)

    }
}
