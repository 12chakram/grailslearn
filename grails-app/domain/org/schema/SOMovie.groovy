package org.schema

import java.util.Date;

class SOMovie extends CreativeWork {
	
	//	Person 	A cast member of the movie, tv/radio series, season, episode, or video. Supercedes actors.
	//  part of creative roles director	Person 	The director of the movie, tv/radio episode or series. Supercedes directors.
	// duration	Duration 	- Comes from creative work - The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format.
					// part of Creative Role musicBy	Person
					// or MusicGroup 	The composer of the movie or TV/radio soundtrack.
//	producer	Person 	The producer of the movie, tv/radio series, season, or episode, or video.
//	productionCompany	Organization 	The production company or studio that made the movie, tv/radio series, season, or episode, or media object.
//	trailer	VideoObject 	The trailer of a movie or tv/radio series, season, or episode.

	
	// Fields from multiplex online domain model 
	
//	Date releaseDate - creativeWork Date published
	Integer releaseYear // taken from the above date or imdb - taken
//	String synopsis - Description from Thing
//	String tagLine - creativeWork headLine
//	Date usReleaseDate
	
	static hasMany = [songs:MOSong, movieClips:MOMovieClip, promotions:MOMoviePromotion]
	
    static constraints = {
    }
	
	def beforeValidate() {
		
		String friendlyName = name?.asFriendlyUrl();
		sanitizedName = friendlyName
		if (!otherUniqueQualifier) otherUniqueQualifier = "-"
		if (!type) type = 'Movie'
		super.beforeValidate()
	}
	
	
	@Override
	String getControllerName() {
		return "SOMovie"
	}
}
