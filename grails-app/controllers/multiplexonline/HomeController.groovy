package multiplexonline

import grails.converters.JSON
import grails.converters.XML
import org.schema.SOGenre
import org.schema.SOMovie
import org.schema.VideoObject

class HomeController {

	def springSecurityService
	
	def index() {
		
		if (springSecurityService.isLoggedIn()) {
			
			def user = springSecurityService.getCurrentUser()
			
			def roles = springSecurityService.getPrincipal().getAuthorities()
			
			String role = roles.getAt(0).toString()
			
			if(role.equals("ROLE_ADMIN")){
				
				redirect(controller: "user", action: "dashboard")
				
			}else if(role.equals("ROLE_PUBLISHER_ADMIN")){
				redirect(controller: "movie", action: "index")
			}
			else if(role.equals("ROLE_PUBLISHER_USER")){
				redirect(controller: "movie", action: "index")
			}
		}
		
		
		params.max = 12;
		def comedy = [SOGenre.findByGenre('Comedy')]
		String queryString = "from org.schema.SOMovie as m where m.isPublished = :published"
		def featured = SOMovie.findAll(queryString, [published:true], [max:12, sort:'id', order:'desc'])
		String publishedQuery = "from org.schema.VideoObject"// as mr where (mr.media.mediaKind = 'Movie' or mr.media.mediaKind = 'Song') ";
		def published = org.schema.VideoObject.findAll(publishedQuery,[],[max:12,sort:"id",order:"desc"])//.collect({it.media})
		def songs = VideoObject.findAll("from VideoObject as mr where mr.creativeWork.type = 'Song'");
//		def comedyClips = VideoObject.findAll("from VideoObject as mr where mr.creativeWork.type = 'MovieClip' and mr.creativeWork.genres.genre = 'Comedy'")// in(:genre)", ["genre":comedy])
		def comedyClips = VideoObject.findAll("from VideoObject as vo join vo.creativeWork as cw join vo.creativeWork.genres as gr WHERE cw.type = 'MovieClip' and gr.genre in ('Comedy')")
						.flatten().unique().findAll {
								it.instanceOf(org.schema.VideoObject)
						}
		
		def promotions = VideoObject.findAll("from VideoObject as mr where mr.creativeWork.type = 'MoviePromotion'")
		withFormat {
			html {
				respond featured, model:[featured:featured, published:published, songs:songs, comedyClips:comedyClips, promotions:promotions]
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