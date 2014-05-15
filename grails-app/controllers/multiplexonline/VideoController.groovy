package multiplexonline



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Video.list(params), model:[videoInstanceCount: Video.count()]
    }

    def show(Video videoInstance) {
		MediaRight mediaRight = videoInstance.mediaRight//MediaRight.findByVideo(videoInstance)
        respond videoInstance
    }

    def create() {
		Video video = new Video(params);
		Publisher publisher = new Publisher()
		MediaRight mediaRight = new MediaRight(video:video, published:false, publisher: publisher)
		video.mediaRight = mediaRight
        respond video, model:[videoType: 'Movie', media: ""]
    }

    @Transactional
    def save(Video videoInstance, MediaRight mediaRight) {
        if (videoInstance == null || mediaRight == null) {
            notFound()
            return
        }
		
		mediaRight.clearErrors()
		videoInstance.clearErrors();

        if (videoInstance.hasErrors()) {
            respond videoInstance.errors, view:'create'
            return
        }
		
//		videoInstance.save()
		videoInstance.mediaRight = mediaRight
		mediaRight.video = videoInstance;
		mediaRight.media = Media.findByTitle(params.media)
		mediaRight.published = false
		mediaRight.clearErrors()
		mediaRight.validate()
		videoInstance.validate()
		
		if (videoInstance.hasErrors()) {
			respond videoInstance.errors, view:'create'
			return
		}
		if (mediaRight.hasErrors()) {
			respond mediaRight.errors, view:'create'
			return
		}
		
		mediaRight.save()
		flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'videoInstance.label', default: 'Video'), videoInstance.id])
                redirect videoInstance
            }
            '*' { respond videoInstance, [status: CREATED] }
        }
    }

    def edit(Video videoInstance) {
		MediaRight mediaRight = MediaRight.findByVideo(videoInstance)
        respond videoInstance, model:[videoType: 'Movie', mediaRight: mediaRight, media: "${mediaRight.media.title}", publisher:mediaRight.publisher]
    }

    @Transactional
    def update(Video videoInstance, MediaRight mediaRight) {
        if (videoInstance == null) {
            notFound()
            return
        }

        if (videoInstance.hasErrors()) {
            respond videoInstance.errors, view:'edit'
            return
        }
		
		mediaRight.save()
		videoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Video.label', default: 'Video'), videoInstance.id])
                redirect videoInstance
            }
            '*'{ respond videoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Video videoInstance) {

        if (videoInstance == null) {
            notFound()
            return
        }

        videoInstance.mediaRight.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Video.label', default: 'Video'), videoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'videoInstance.label', default: 'Video'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
