package multiplexonline

import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import java.awt.image.BufferedImage

import javax.imageio.ImageIO

import org.apache.commons.io.FileUtils

@Transactional(readOnly = true)
class MovieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def burningImageService
	
	@Secured(['ROLE_PUBLISHER_ADMIN','ROLE_ADMIN','ROLE_PUBLISHER_USER'])
    def index(Integer max, Integer releaseYear, String language, String title) {
        params.max = Math.min(max ?: 10, 100)
		println( "" + releaseYear + "" + language)
		boolean andRequired = false;
		String queryString = "from Movie as m";
		if (releaseYear != null) {
			queryString += " where  m.releaseYear = " + releaseYear
			andRequired = true;
		}
		if (language != null && !"".equals(language)) {
			if (andRequired) queryString += " and " + "m.language = '" + language + "'"
			else queryString += " where m.language = '" + language + "'"
			andRequired = true
		}
		if (title != null && !"".equals(title)) {
			if (andRequired) queryString += " and " + "m.title like '%" + title + "%'"
			else queryString += " where m.title like '%" + title + "%'"
			andRequired = true
		}
		println(queryString)
		println params
		def results = Movie.findAll(queryString,
                   [max:10, offset:(params.offset == null) ? new Integer(0):Integer.parseInt(params.offset)])
		def movieInstanceCount = Movie.executeQuery(queryString).size()
		respond results, model:[movieInstanceCount: movieInstanceCount, releaseYear: releaseYear, language: language, title:title]
    }

//    def show(Movie movieInstance) {
//        respond movieInstance
//    }
	
	def show() {
		Movie movieInstance = Movie.findBySanitizedTitle(params.sanitizedTitle)
		if (movieInstance == null) movieInstance = Movie.findById(params.id)
		respond movieInstance //[movieInstacne: movie]
	}
	
	def showDetail() {
		show()
	}
	
	def showSanitized() {
		Movie movieInstance = Movie.findBySanitizedTitle(params.sanitizedTitle)
		respond movieInstance //[movieInstacne: movie]
	}

    def create() {
		List<String> actorList = new ArrayList<String>();
		List<String> directorList = new ArrayList<String>();
		respond new Movie(params), model:[actors: actorList, directors: directorList]
    }

    @Transactional
    def save(Movie movieInstance) {
		
        if (movieInstance == null) {
            notFound()
            return
        }

        if (movieInstance.hasErrors()) {
            respond movieInstance.errors, view:'create'
            return
        }

		movieInstance.setMediaType(MediaType.findByType("Movie"))

		// Add the MediaRoles.
		if (movieInstance.mediaRoles != null) movieInstance.mediaRoles.clear()

		String[] persons = params.actors.replace("\\[\\]\\,", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name)
			MediaRole role = MediaRole.findByPersonAndRole(p, "Actor")
			if (role == null) role = new MediaRole(person: p, role: "Actor").save()
			movieInstance.addToMediaRoles(role)
		}

		persons = params.actresses.replace("[],", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name)
			MediaRole role = MediaRole.findByPersonAndRole(p, "Actress")
			if (role == null) role = new MediaRole(person: p, role: "Actress").save()
			movieInstance.addToMediaRoles(role)
		}
		
		persons = params.producers.replace("[],", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name)
			MediaRole role = MediaRole.findByPersonAndRole(p, "Producer")
			if (role == null) role = new MediaRole(person: p, role: "Producer").save()
			movieInstance.addToMediaRoles(role)
		}
		if (params.director != null && !"".equals(params.director)) {
			Person p = Person.findByFullName(params.director)
			MediaRole role = MediaRole.findByPersonAndRole(p, "Director")
			if (role == null) role = new MediaRole(person: p, role: "Director").save()
			movieInstance.addToMediaRoles(role)
		}
		movieInstance.save flush:true
		try {
			def x1 = params.x1 as Integer
			def y1 = params.y1 as Integer
			def x2 = params.x2 as Integer
			def y2 = params.y2 as Integer
			if (movieInstance.lpHires != null && !"".equals( movieInstance.lpHires)) {
				processImage(movieInstance.lpHires, movieInstance.title, x1, y1, x2, y2)
			}
		} catch(Exception e) {
			println e.toString();
		}
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'movieInstance.label', default: 'Movie'), movieInstance.id])
                redirect movieInstance
            }
            '*' { respond movieInstance, [status: CREATED] }
        }
    }
	
	private processImage(String imageUrl, String title, Float x1, Float y1, Float x2, Float y2) {
		String fileName = "/Users/sai/posters/temp/" + title + "." + imageUrl.subSequence((imageUrl.length() - 3), imageUrl.length())
		File file = new File(fileName)
		URL myURL = new URL(imageUrl);
		println("Copying image from URL")
		FileUtils.copyURLToFile(myURL, file);
		println("Copying image from URL - Done")
		BufferedImage image = ImageIO.read(file)
		float scalingRatio = image.width/800
		Float xn1 = new Float(x1.floatValue()*scalingRatio)
		Float yn1 = new Float(y1.floatValue()*scalingRatio)
		Float xn2 = new Float(x2.floatValue()*scalingRatio)
		Float yn2 = new Float(y2.floatValue()*scalingRatio)
		
		BufferedImage croppedImage = image.getSubimage(xn1.intValue(), yn1.intValue(), xn2.intValue() - xn1.intValue(), yn2.intValue() - yn1.intValue())
		String croppedFileName = "/Users/sai/posters/temp/cropped" + title + ".jpg"
		File croppedPicture = new File(croppedFileName)
		ImageIO.write(croppedImage, "jpg", croppedPicture);
		
		burningImageService.doWith(croppedFileName, '/Users/sai/posters')
		.execute (title, {
			it.scaleAccurate(750, (750*9/16).intValue())
		 })
		.execute (title + '-thumbnail', {
			it.scaleAccurate(300, (300*9/16).intValue())
			//it.scaleApproximate(140, 86)
		 })
	}

    def edit(Movie movieInstance) {
	
		String actors = ((movieInstance.mediaRoles.findAll {it.role.equals("Actor")})*.person.fullName).toString()
		actors = actors.substring(1, actors.length() -1);
		String actresses = ((movieInstance.mediaRoles.findAll {it.role.equals("Actress")})*.person.fullName).toString();
		actresses = actresses.substring(1, actresses.length() -1);
		String producers = ((movieInstance.mediaRoles.findAll {it.role.equals("Producer")})*.person.fullName).toString();
		producers = producers.substring(1, producers.length() -1);
		ArrayList<String> directors = ((movieInstance.mediaRoles.findAll {it.role.equals("Director")})*.person.fullName);
		String director = "";
		if (!directors.isEmpty()) director = directors.get(0);
        respond movieInstance, model:[actors: actors ,actresses: actresses, producers:producers, director:director]
    }

    @Transactional
    def update(Movie movieInstance) {
        if (movieInstance == null) {
            notFound()
            return
        }

        if (movieInstance.hasErrors()) {
            respond movieInstance.errors, view:'edit'
            return
        }

        movieInstance.setMediaType(MediaType.findByType("Movie"))

		// Add the MediaRoles.
		if (movieInstance.mediaRoles != null) movieInstance.mediaRoles.clear()

		String[] persons = params.actors.replace("\\[\\]\\,", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name) //TODO: There is a bug where an extra name is returned with a blank appended. Hence if we don't find a person don't process
			if (p == null) {
				println "Could not find person: " + name 
				continue
			}
			MediaRole role = MediaRole.findByPersonAndRole(p, "Actor")
			if (role == null) role = new MediaRole(person: p, role: "Actor").save()
			movieInstance.addToMediaRoles(role)
		}

		persons = params.actresses.replace("[],", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name)
			if (p == null) {
				println "Could not find person: " + name
				continue
			}
			MediaRole role = MediaRole.findByPersonAndRole(p, "Actress")
			if (role == null) role = new MediaRole(person: p, role: "Actress").save()
			movieInstance.addToMediaRoles(role)
		}
		
		persons = params.producers.replace("[],", "").split(",")
		for (name in persons) {
			if ("[]".equals(name)) continue;
			Person p = Person.findByFullName(name)
			if (p == null) {
				println "Could not find person: " + name
				continue
			}
			MediaRole role = MediaRole.findByPersonAndRole(p, "Producer")
			if (role == null) role = new MediaRole(person: p, role: "Producer").save()
			movieInstance.addToMediaRoles(role)
		}
		if (params.director != null && !"".equals(params.director)) {
			Person p = Person.findByFullName(params.director)
			if (p != null) {
				MediaRole role = MediaRole.findByPersonAndRole(p, "Director")
				if (role == null) role = new MediaRole(person: p, role: "Director").save()
				movieInstance.addToMediaRoles(role)
			}
			
		}
		movieInstance.save flush:true

		try {
			def x1 = params.x1 as Float
			def y1 = params.y1 as Float
			def x2 = params.x2 as Float
			def y2 = params.y2 as Float
			if (movieInstance.lpHires != null && !"".equals( movieInstance.lpHires)) {
				processImage(movieInstance.lpHires, movieInstance.title, x1, y1, x2, y2)
			}
		} catch(Exception e) {
			println e.toString();
		}
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Movie.label', default: 'Movie'), movieInstance.id])
                redirect movieInstance
            }
            '*'{ respond movieInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Movie movieInstance) {

        if (movieInstance == null) {
            notFound()
            return
        }

        movieInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Movie.label', default: 'Movie'), movieInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'movieInstance.label', default: 'Movie'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
