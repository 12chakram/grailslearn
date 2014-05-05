package multiplexonline.portal

import grails.transaction.Transactional;
import org.schema.CreativeWork
import org.schema.SOMovie

class MediaController {

    def index(Integer max, Integer releaseYear, String language, String name) { 
//		String queryString = "from org.schema.CreativeWork as c"
//		def mediaInstanceList = CreativeWork.findAll(queryString,[],[max:12, sort:'id', order:'desc'])
		
		
		params.max = Math.min(max ?: 10, 100)
		println( "" + releaseYear + "" + language)
		boolean andRequired = false;
		String queryString = "from org.schema.SOMovie as m";
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
		respond results, model:[mediaInstanceList:results, mediaInstanceCount: mediaInstanceCount, releaseYear: releaseYear, language: language, name:name]
		
		//render(view: "/portal/media/index", model:[pageTitle:'Media List', mediaInstanceCount: mediaInstanceCount, mediaInstanceList:results, releaseYear: releaseYear, language: language, name:name])
	}
	
	
}
