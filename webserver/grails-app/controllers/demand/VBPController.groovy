package demand

class VBPController {

    def vbpService = new VBPService()

    def urlVideoEmbebed = 'http://www.youtube.com/embed/id_video?rel=0'

    def index() {

        def band =vbpService.getBand(params)

        def urlVideo = urlVideoEmbebed.replace('id_video',getIdVideo(band.url_videos[0]))

        def model = [
                "band"     :band,
                "urlVideo" :urlVideo
        ]

        render (view:'index', model:model)

    }

    def getIdVideo(def url){
        def videoId = ''

        if (url){
            videoId = url.split('v=')[1]
        }

        videoId
    }
}
