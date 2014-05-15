package org.schema

class Season extends CreativeWork {
	
	//endDate	Date 	The end date and time of the event or item (in ISO 8601 date format).
	//episode	Episode 	An episode of a TV/radio series or season Supercedes episodes.
	//numberOfEpisodes	Number 	The number of episodes in this season or series.
	//partOfSeries	Series 	The series to which this episode or season belongs. Supercedes partOfTVSeries.
	//position	Text 	Free text to define other than pure numerical ranking of an episode or a season in an ordered list of items (further formatting restrictions may apply within particular user groups).
	//producer	Person 	The producer of the movie, tv/radio series, season, or episode, or video.
	//productionCompany	Organization 	The production company or studio that made the movie, tv/radio series, season, or episode, or media object.
	//seasonNumber	Integer 	Position of the season within an ordered group of seasons.
	//startDate	Date 	The start date and time of the event or item (in ISO 8601 date format).
	//trailer	VideoObject 	The trailer of a movie or tv/radio series, season, or episode.

//	static mapping = {
//		discriminator "Season"
//	}
	
    static constraints = {
    }
}
