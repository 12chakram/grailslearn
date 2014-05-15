package org.schema



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MOSongController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MOSong.list(params), model:[MOSongInstanceCount: MOSong.count()]
    }

    def show(MOSong MOSongInstance) {
        respond MOSongInstance
    }

    def create() {
        respond new MOSong(params)
    }

    @Transactional
    def save(MOSong MOSongInstance) {
        if (MOSongInstance == null) {
            notFound()
            return
        }

        if (MOSongInstance.hasErrors()) {
            respond MOSongInstance.errors, view:'create'
            return
        }

        MOSongInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'MOSongInstance.label', default: 'MOSong'), MOSongInstance.id])
                redirect MOSongInstance
            }
            '*' { respond MOSongInstance, [status: CREATED] }
        }
    }

    def edit(MOSong MOSongInstance) {
        respond MOSongInstance
    }

    @Transactional
    def update(MOSong MOSongInstance) {
        if (MOSongInstance == null) {
            notFound()
            return
        }

        if (MOSongInstance.hasErrors()) {
            respond MOSongInstance.errors, view:'edit'
            return
        }

        MOSongInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MOSong.label', default: 'MOSong'), MOSongInstance.id])
                redirect MOSongInstance
            }
            '*'{ respond MOSongInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MOSong MOSongInstance) {

        if (MOSongInstance == null) {
            notFound()
            return
        }

        MOSongInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MOSong.label', default: 'MOSong'), MOSongInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'MOSongInstance.label', default: 'MOSong'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
