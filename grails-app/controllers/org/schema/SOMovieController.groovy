package org.schema



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SOMovieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def MOImageService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SOMovie.list(params), model:[SOMovieInstanceCount: SOMovie.count()]
    }

    def show(SOMovie SOMovieInstance) {
        respond SOMovieInstance
    }
	
	def getMovieList() {
		Integer max = 10
		List<String> movieList = SOMovie.executeQuery("SELECT m.name from SOMovie as m where m.name  like :name", [name: "%${params.title}%"], [max: max])

		render movieList as JSON
		
	}

    def create() {
        respond new SOMovie(params)
    }

    @Transactional
    def save(SOMovie SOMovieInstance) {
        if (SOMovieInstance == null) {
            notFound()
            return
        }

        if (SOMovieInstance.hasErrors()) {
            respond SOMovieInstance.errors, view:'create'
            return
        }

        SOMovieInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'SOMovieInstance.label', default: 'SOMovie'), SOMovieInstance.id])
                redirect SOMovieInstance
            }
            '*' { respond SOMovieInstance, [status: CREATED] }
        }
    }

    def edit(SOMovie SOMovieInstance) {
        respond SOMovieInstance
    }

    @Transactional
    def update(SOMovie SOMovieInstance) {
        if (SOMovieInstance == null) {
            notFound()
            return
        }

        if (SOMovieInstance.hasErrors()) {
            respond SOMovieInstance.errors, view:'edit'
            return
        }

        SOMovieInstance.save flush:true
		
		try {
			def x1 = params.x1 as Float
			def y1 = params.y1 as Float
			def x2 = params.x2 as Float
			def y2 = params.y2 as Float
			if (SOMovieInstance.image != null && !"".equals( SOMovieInstance.image)) {
				MOImageService.processImage(SOMovieInstance.image, SOMovieInstance.name, x1, y1, x2, y2)
			}
		} catch(Exception e) {
			println e.toString();
		}

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SOMovie.label', default: 'SOMovie'), SOMovieInstance.id])
                redirect SOMovieInstance
            }
            '*'{ respond SOMovieInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SOMovie SOMovieInstance) {

        if (SOMovieInstance == null) {
            notFound()
            return
        }

        SOMovieInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SOMovie.label', default: 'SOMovie'), SOMovieInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'SOMovieInstance.label', default: 'SOMovie'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
