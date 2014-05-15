package org.schema



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CreativeWorkController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CreativeWork.list(params), model:[creativeWorkInstanceCount: CreativeWork.count()]
    }

    def show(CreativeWork creativeWorkInstance) {
        respond creativeWorkInstance
    }
	
	def getList() {
		Integer max = 10
		List<String> mediaList = CreativeWork.executeQuery("from CreativeWork as m where m.name like :name", [name: "%${params.name}%"], [max: max])
//		JSON.excludeForCreativeWork(CreativeWork, ['gradePointAverage', 'studentID',
//			'socialSecurityNumber', 'id', 'class'])
//		
		render(contentType: "application/json") {
			
			creativeWorks = array {
				for (item in mediaList) {
					id: item.id
					name: item.name
				}
			}
		}
//		render mediaList.findAll{} as JSON	
	}


    @Transactional
    def save(CreativeWork creativeWorkInstance) {
        if (creativeWorkInstance == null) {
            notFound()
            return
        }

        if (creativeWorkInstance.hasErrors()) {
            respond creativeWorkInstance.errors, view:'create'
            return
        }

        creativeWorkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'creativeWorkInstance.label', default: 'CreativeWork'), creativeWorkInstance.id])
                redirect creativeWorkInstance
            }
            '*' { respond creativeWorkInstance, [status: CREATED] }
        }
    }

    def edit(CreativeWork creativeWorkInstance) {
        respond creativeWorkInstance
    }

    @Transactional
    def update(CreativeWork creativeWorkInstance) {
        if (creativeWorkInstance == null) {
            notFound()
            return
        }

        if (creativeWorkInstance.hasErrors()) {
            respond creativeWorkInstance.errors, view:'edit'
            return
        }

        creativeWorkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CreativeWork.label', default: 'CreativeWork'), creativeWorkInstance.id])
                redirect creativeWorkInstance
            }
            '*'{ respond creativeWorkInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CreativeWork creativeWorkInstance) {

        if (creativeWorkInstance == null) {
            notFound()
            return
        }

        creativeWorkInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CreativeWork.label', default: 'CreativeWork'), creativeWorkInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'creativeWorkInstance.label', default: 'CreativeWork'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
