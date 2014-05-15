package org.schema



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MOMovieClipController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MOMovieClip.list(params), model:[MOMovieClipInstanceCount: MOMovieClip.count()]
    }

    def show(MOMovieClip MOMovieClipInstance) {
        respond MOMovieClipInstance
    }

    def create() {
        respond new MOMovieClip(params)
    }

    @Transactional
    def save(MOMovieClip MOMovieClipInstance) {
        if (MOMovieClipInstance == null) {
            notFound()
            return
        }

        if (MOMovieClipInstance.hasErrors()) {
            respond MOMovieClipInstance.errors, view:'create'
            return
        }

        MOMovieClipInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'MOMovieClipInstance.label', default: 'MOMovieClip'), MOMovieClipInstance.id])
                redirect MOMovieClipInstance
            }
            '*' { respond MOMovieClipInstance, [status: CREATED] }
        }
    }

    def edit(MOMovieClip MOMovieClipInstance) {
        respond MOMovieClipInstance
    }

    @Transactional
    def update(MOMovieClip MOMovieClipInstance) {
        if (MOMovieClipInstance == null) {
            notFound()
            return
        }

        if (MOMovieClipInstance.hasErrors()) {
            respond MOMovieClipInstance.errors, view:'edit'
            return
        }

        MOMovieClipInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MOMovieClip.label', default: 'MOMovieClip'), MOMovieClipInstance.id])
                redirect MOMovieClipInstance
            }
            '*'{ respond MOMovieClipInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MOMovieClip MOMovieClipInstance) {

        if (MOMovieClipInstance == null) {
            notFound()
            return
        }

        MOMovieClipInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MOMovieClip.label', default: 'MOMovieClip'), MOMovieClipInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'MOMovieClipInstance.label', default: 'MOMovieClip'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
