package org.schema



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoObjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VideoObject.list(params), model:[videoObjectInstanceCount: VideoObject.count()]
    }

    def show(VideoObject videoObjectInstance) {
        respond videoObjectInstance
    }

    def create() {
        respond new VideoObject(params)
    }

    @Transactional
    def save(VideoObject videoObjectInstance) {
        if (videoObjectInstance == null) {
            notFound()
            return
        }

        if (videoObjectInstance.hasErrors()) {
            respond videoObjectInstance.errors, view:'create'
            return
        }

        videoObjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'videoObjectInstance.label', default: 'VideoObject'), videoObjectInstance.id])
                redirect videoObjectInstance
            }
            '*' { respond videoObjectInstance, [status: CREATED] }
        }
    }

    def edit(VideoObject videoObjectInstance) {
        respond videoObjectInstance
    }

    @Transactional
    def update(VideoObject videoObjectInstance) {
        if (videoObjectInstance == null) {
            notFound()
            return
        }

        if (videoObjectInstance.hasErrors()) {
            respond videoObjectInstance.errors, view:'edit'
            return
        }

        videoObjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VideoObject.label', default: 'VideoObject'), videoObjectInstance.id])
                redirect videoObjectInstance
            }
            '*'{ respond videoObjectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VideoObject videoObjectInstance) {

        if (videoObjectInstance == null) {
            notFound()
            return
        }

        videoObjectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VideoObject.label', default: 'VideoObject'), videoObjectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'videoObjectInstance.label', default: 'VideoObject'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
