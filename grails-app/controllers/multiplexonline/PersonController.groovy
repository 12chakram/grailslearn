package multiplexonline



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import org.apache.commons.io.FileUtils

@Transactional(readOnly = true)
class PersonController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def burningImageService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Person.list(params), model:[personInstanceCount: Person.count()]
    }

    def show(Person personInstance) {
        respond personInstance
    }

    def create() {
        respond new Person(params)
    }
	
	def getPersonList() {
		
		List<String> actorList = Person.executeQuery("SELECT p.fullName from Person as p, MediaRole as mr where mr.role=:role and mr.person=p and p.fullName like :fullName",[role: params.role, fullName: "%${params.fullName}%"], [max: params.max])

		render actorList as JSON
		
	}

    @Transactional
    def save(Person personInstance) {
        if (personInstance == null) {
            notFound()
            return
        }

        if (personInstance.hasErrors()) {
            respond personInstance.errors, view:'create'
            return
        }

        personInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personInstance.label', default: 'Person'), personInstance.id])
                redirect personInstance
            }
            '*' { respond personInstance, [status: CREATED] }
        }
    }

    def edit(Person personInstance) {
        respond personInstance
    }

    @Transactional
    def update(Person personInstance) {
        if (personInstance == null) {
            notFound()
            return
        }

        if (personInstance.hasErrors()) {
            respond personInstance.errors, view:'edit'
            return
        }

        personInstance.save flush:true

		try {
			if (personInstance.avtarUrl != null && !"".equals(personInstance.avtarUrl)) {
				processImage(personInstance.avtarUrl, personInstance.sanitizedName)
			}
		} catch(Exception e) {
			println e.toString();
		}
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Person.label', default: 'Person'), personInstance.id])
                redirect personInstance
            }
            '*'{ respond personInstance, [status: OK] }
        }
    }
	
	private processImage(String imageUrl, String title) {
		String fileName = "/Users/sai/posters/temp/" + title + "." + imageUrl.subSequence((imageUrl.length() - 3), imageUrl.length())
		File file = new File(fileName)
		URL myURL = new URL(imageUrl);
		FileUtils.copyURLToFile(myURL, file);
		burningImageService.doWith(fileName, '/Users/sai/posters')
		.execute (title + '-avtar', {
			it.scaleAccurate(60, 80)
			//it.scaleApproximate(140, 86)
		 })
	}

    @Transactional
    def delete(Person personInstance) {

        if (personInstance == null) {
            notFound()
            return
        }

        personInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Person.label', default: 'Person'), personInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personInstance.label', default: 'Person'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
