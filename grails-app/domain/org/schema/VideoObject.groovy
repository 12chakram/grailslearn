package org.schema

class VideoObject extends MediaObject {

	String caption	// Text 	The caption for this object.
	// productionCompany	Organization 	The production company or studio that made the movie, tv/radio series, season, or episode, or media object.
	// thumbnail	ImageObject 	Thumbnail image for an image or video.
	// transcript	Text 	If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
	String videoFrameSize	// Enumeration values LetterBox etc I guess
	String videoQuality		// SD, HD FULL-HD Text 	The quality of the video.
	
	// The following determine the embedUrl of MediaObject
	String streamSource
	String sourceStreamId

	
    static constraints = {
    }
	
	def beforeValidate() {
		super.beforeValidate()
		if (!type) type = 'Video'
	}
}
