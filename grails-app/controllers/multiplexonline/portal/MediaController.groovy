package multiplexonline.portal

import grails.converters.JSON
import grails.transaction.Transactional;
import groovy.json.JsonBuilder
import org.schema.CreativeWork
import org.schema.SOMovie
import org.schema.CreativeRole

class MediaController {

    def index(Integer max, Integer releaseYear, String language, String name) { 
//		String queryString = "from org.schema.CreativeWork as c"
//		def mediaInstanceList = CreativeWork.findAll(queryString,[],[max:12, sort:'id', order:'desc'])
		
		
		params.max = Math.min(max ?: 10, 100)
		println( "" + releaseYear + "" + language)
		boolean andRequired = false;
		String queryString = "from org.schema.CreativeWork as m";
		if (releaseYear != null) {
			queryString += " where  m.releaseYear = " + releaseYear
			andRequired = true;
		}
		if (language != null && !"".equals(language)) {
			if (andRequired) queryString += " and " + "m.inLanguage = '" + language + "'"
			else queryString += " where m.inLanguage = '" + language + "'"
			andRequired = true
		}
		if (name != null && !"".equals(name)) {
			if (andRequired) queryString += " and " + "m.name like '%" + name + "%'"
			else queryString += " where m.name like '%" + name + "%'"
			andRequired = true
		}
		println(queryString)
		println params
		def results = SOMovie.findAll(queryString,
				   [max:10, offset:(params.offset == null) ? new Integer(0):Integer.parseInt(params.offset)])
		def mediaInstanceCount = SOMovie.executeQuery(queryString).size()
		
		def offset = params.offset ==null ? new Integer(0):Integer.parseInt(params.offset)
		
		def endRecord = offset + 10
		
		if(endRecord>mediaInstanceCount){
			endRecord = offset+results.size()
		}
		
		respond results, model:[
			mediaInstanceList:results, 
			mediaInstanceCount: mediaInstanceCount, 
			releaseYear: releaseYear, 
			language: language, name:name,
			offset : offset+1,
			endRecord :endRecord
			]
		
		//render(view: "/portal/media/index", model:[pageTitle:'Media List', mediaInstanceCount: mediaInstanceCount, mediaInstanceList:results, releaseYear: releaseYear, language: language, name:name])
	}
	
	def create(String type) {
		if ("Movie".equals(type)) {
			redirect(controller: "SOMovie", action: "create")
		} else if ("Song".equals(type)) {
			redirect(controller: "MOSong", action: "create")
		} else if ("Clip".equals(type)) {
			redirect(controller: "SOMovieClip", action: "create")
		} else if ("Promotion".equals(type)) {
			redirect(controller: "SOMoviePromotion", action: "create")
		}
	}	
	
	
	def getCreativeRoles(String name, Integer max) {
		def result = CreativeRole.executeQuery("from CreativeRole as cr where cr.personOrg like :personOrg", [personOrg: "%${params.name}%"], [max: max])
		JsonBuilder json = new JsonBuilder ()
		def map =  json {
			 total result.size()
			 roles result.collect { CreativeRole s -> [id : s.id, personOrg : s.personOrg]

			}
		}
		render map as JSON
		
	}
	
	def getCreativeRole(CreativeRole creativeRoleInstance) {
		respond creativeRoleInstance
	}
	
}
