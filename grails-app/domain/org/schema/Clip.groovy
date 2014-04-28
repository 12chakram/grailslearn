package org.schema

class Clip extends CreativeWork {
	
//	clipNumber	Integer 	Position of the clip within an ordered group of clips.
//	partOfEpisode	Episode 	The episode to which this clip belongs.
//	partOfSeason	Season 	The season to which this episode belongs.
//	partOfSeries	Series 	The series to which this episode or season belongs. Supercedes partOfTVSeries.
//	position	Text 	Free text to define other than pure numerical ranking of an episode or a season in an ordered list of items (further formatting restrictions may apply within particular user groups).
//	publication	PublicationEvent 	A publication event associated with the episode, clip or media object.
	
//	static mapping = {
//		table 'so_clip'
//	}
	static belongsTo = [creativeWork:CreativeWork]
	
    static constraints = {
		
    }
}
