package multiplexonline

class Video implements Serializable {

	String description
	Integer runningTime
	String sourceStreamId
	String streamSource
	String subTitleLanguage
	String quality
	
	static belongsTo = [mediaRight: MediaRight]

//	static hasMany = [mediaRights: MediaRight,
//	                  publisherVideos: PublisherVideo]

	String getStreamUrl() {
		if ("Youtube".equals(streamSource)) {
			return "http://www.youtube.com/watch?v=" + sourceStreamId
		}
		return "#"
	}
	
	static constraints = {
		streamSource nullable: true
		quality		inList: ["SD", "HD", "Full HD"]
		subTitleLanguage nullable:true, inList: ["English", "Spanish"]
	}
}
