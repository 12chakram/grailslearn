package org.schema

import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonBuilder

@Transactional(readOnly = true)
class SOMovieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def MOImageService
	def burningImageService

	// TODO implement filtering for Movie
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SOMovie.list(params), model:[SOMovieInstanceCount: SOMovie.count()]
    }

    def show(SOMovie SOMovieInstance) {
		def videos = VideoObject.findAll("from VideoObject as v where v.creativeWork = :media", [media:SOMovieInstance]);
        respond SOMovieInstance, model:[videos: videos]
    }
	
	def getMovieList() {
		Integer max = 10
		def result = SOMovie.executeQuery("from SOMovie as m where m.name  like :name", [name: "%${params.name}%"], [max: max])
		JsonBuilder json = new JsonBuilder ()
		def map =  json {
			 total result.size()
			 movies result.collect { SOMovie s -> [id  : s.id, name : s.name]

			}
		}
		render map as JSON
		
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
		
		if (params.creativeRoles) {
			SOMovieInstance.clearErrors()
			setCreativeRoles(SOMovieInstance, params.creativeRoles);
			SOMovieInstance.validate()
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
	
	private setCreativeRoles(SOMovie SOMovieInstance, String roles) {
		def ids = roles.split(",")
		for ( x in ids ) {
			int i = x as int
			CreativeRole role = CreativeRole.get(i)
			if (role) {
				SOMovieInstance.addToCreativeRoles(role) 
			}
		}
	}

    @Transactional
    def update(SOMovie SOMovieInstance) {
        if (SOMovieInstance == null) {
            notFound()
            return
        }

		if (params.creativeRoles) {
			SOMovieInstance.clearErrors()
			setCreativeRoles(SOMovieInstance, params.creativeRoles);
			SOMovieInstance.validate()
		}
        if (SOMovieInstance.hasErrors()) {
            respond SOMovieInstance.errors, view:'edit'
            return
        }
        SOMovieInstance.save flush:true
		
		if (params.processImage) {
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
