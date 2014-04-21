package multiplexonline

import java.util.Date;

class PublishData implements Serializable {
	
	String videoType
	String movieTitle
	Integer mediaId
	String selectedMediaTitle
	String title
	String iinName
	String language
	String lpHires
	String mediaKind
	Integer runningTime
	
	// MediaRight Information
	Date 	expiryDate
	Date 	startingDate
	String 	geoFilter
	Boolean published
	String  publisher
	String 	monetizeOption
	
	// Video information
	
	String description
	String sourceStreamId
	String streamSource
	String subTitleLanguage
	String quality
	
	static PublishData initializeWithParams(Map params) {
		PublishData data = new PublishData()
		data.videoType = params.videoType;
		data.movieTitle = params.media;
		data.mediaId = params.mediaId
		data.selectedMediaTitle = params.mediaTitle
		data.title = params.title
		data.iinName = params.iinName
		data.language = params.language
		data.lpHires = params.lpHires
		data.videoType = params.videoType
		data.runningTime = params.runningTime==null?new Integer(0):Integer.parseInt(params.runningTime)
		return data
	}
	
	@Override
	String toString() {
		"videoType = " + videoType + "\n" +
		"movieTitle = " + movieTitle + "\n" +
		"mediaId =" + mediaId + "\n" +
		"selectedMediaTitle = " + selectedMediaTitle+ "\n" +
		"title = " + title + "\n" +
		"iinName = " + iinName + "\n" +
		"language = " + language+ "\n" +
		"lpHires = " + lpHires+ "\n" +
		"mediaKind = " + videoType+ "\n" +
		"runningTime = " + runningTime + "\n"
	}

}
