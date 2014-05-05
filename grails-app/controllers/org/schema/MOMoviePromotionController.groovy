package org.schema



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MOMoviePromotionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MOMoviePromotion.list(params), model:[MOMoviePromotionInstanceCount: MOMoviePromotion.count()]
    }

    def show(MOMoviePromotion MOMoviePromotionInstance) {
        respond MOMoviePromotionInstance
    }

    def create() {
        respond new MOMoviePromotion(params)
    }

    @Transactional
    def save(MOMoviePromotion MOMoviePromotionInstance) {
        if (MOMoviePromotionInstance == null) {
            notFound()
            return
        }

        if (MOMoviePromotionInstance.hasErrors()) {
            respond MOMoviePromotionInstance.errors, view:'create'
            return
        }

        MOMoviePromotionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'MOMoviePromotionInstance.label', default: 'MOMoviePromotion'), MOMoviePromotionInstance.id])
                redirect MOMoviePromotionInstance
            }
            '*' { respond MOMoviePromotionInstance, [status: CREATED] }
        }
    }

    def edit(MOMoviePromotion MOMoviePromotionInstance) {
        respond MOMoviePromotionInstance
    }

    @Transactional
    def update(MOMoviePromotion MOMoviePromotionInstance) {
        if (MOMoviePromotionInstance == null) {
            notFound()
            return
        }

        if (MOMoviePromotionInstance.hasErrors()) {
            respond MOMoviePromotionInstance.errors, view:'edit'
            return
        }

        MOMoviePromotionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MOMoviePromotion.label', default: 'MOMoviePromotion'), MOMoviePromotionInstance.id])
                redirect MOMoviePromotionInstance
            }
            '*'{ respond MOMoviePromotionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MOMoviePromotion MOMoviePromotionInstance) {

        if (MOMoviePromotionInstance == null) {
            notFound()
            return
        }

        MOMoviePromotionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MOMoviePromotion.label', default: 'MOMoviePromotion'), MOMoviePromotionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'MOMoviePromotionInstance.label', default: 'MOMoviePromotion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
