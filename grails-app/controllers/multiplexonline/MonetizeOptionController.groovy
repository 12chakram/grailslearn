package multiplexonline



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MonetizeOptionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MonetizeOption.list(params), model:[monetizeOptionInstanceCount: MonetizeOption.count()]
    }

    def show(MonetizeOption monetizeOptionInstance) {
        respond monetizeOptionInstance
    }

    def create() {
        respond new MonetizeOption(params)
    }

    @Transactional
    def save(MonetizeOption monetizeOptionInstance) {
        if (monetizeOptionInstance == null) {
            notFound()
            return
        }

        if (monetizeOptionInstance.hasErrors()) {
            respond monetizeOptionInstance.errors, view:'create'
            return
        }

        monetizeOptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'monetizeOptionInstance.label', default: 'MonetizeOption'), monetizeOptionInstance.id])
                redirect monetizeOptionInstance
            }
            '*' { respond monetizeOptionInstance, [status: CREATED] }
        }
    }

    def edit(MonetizeOption monetizeOptionInstance) {
        respond monetizeOptionInstance
    }

    @Transactional
    def update(MonetizeOption monetizeOptionInstance) {
        if (monetizeOptionInstance == null) {
            notFound()
            return
        }

        if (monetizeOptionInstance.hasErrors()) {
            respond monetizeOptionInstance.errors, view:'edit'
            return
        }

        monetizeOptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MonetizeOption.label', default: 'MonetizeOption'), monetizeOptionInstance.id])
                redirect monetizeOptionInstance
            }
            '*'{ respond monetizeOptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MonetizeOption monetizeOptionInstance) {

        if (monetizeOptionInstance == null) {
            notFound()
            return
        }

        monetizeOptionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MonetizeOption.label', default: 'MonetizeOption'), monetizeOptionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'monetizeOptionInstance.label', default: 'MonetizeOption'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
