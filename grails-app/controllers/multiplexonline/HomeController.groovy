package multiplexonline

import grails.converters.JSON
import grails.converters.XML

class HomeController {

	def springSecurityService
	
    def index() {
		
		if (springSecurityService.isLoggedIn()) {
			
			def user = springSecurityService.getCurrentUser()
			
			def roles = springSecurityService.getPrincipal().getAuthorities()
			
			String role = roles.getAt(0).toString()
			
			if(role.equals("ROLE_ADMIN")){
				
				redirect(controller: "user", action: "search")
				
			}else if(role.equals("ROLE_PUBLISHER_ADMIN")){
			    redirect(controller: "movie", action: "index")
			}
			else if(role.equals("ROLE_PUBLISHER_USER")){
				redirect(controller: "movie", action: "index")
			}
		}
		
		
		params.max = 12;
		
		String queryString = "from Movie as m where m.published = :published"
		def featured = Movie.findAll(queryString, [published:true], [max:12])
		String publishedQuery = "from MediaRight"// as mr where (mr.media.mediaKind = 'Movie' or mr.media.mediaKind = 'Song') ";
		def published = MediaRight.findAll(publishedQuery, [max:12])//.collect({it.media})
		def songs =  MediaRight.findAll("from MediaRight as mr where mr.media.mediaKind = 'Song' ");
		
		withFormat {
			html {
				respond featured, model:[featured:featured, published:published, songs:songs]
			}
			json {
				render featured as JSON
			}
			xml {
				render featured as XML
			}
		}
	}
}
