package org.schema

class MediaObject extends Thing implements Serializable {

//	Thing about
	int duration // TODO: Should be H#M#S# if different from CreativeWork	Duration 	The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format.
	String embedUrl	// Maybe just a get method URL 	A URL pointing to a player for a specific video. In general, this is the information in the src element of an embed tag and should not be the same as the content of the loc tag. (previous spelling: embedURL)
	CreativeWork creativeWork //encodes- TODO use encodes instead of creativeWork - CreativeWork	CreativeWork 	The creative work encoded by this media object
	String encodingFormat // Enumerations	Text 	mp3, mpeg4, etc.
	Date expires //	Date 	Date the content expires and is no longer useful or available. Useful for videos.
	int interactionCount	// Text 	A count of a specific user interactions with this item—for example, 20 UserLikes, 5 UserComments, or 300 UserDownloads. The user interaction type should be one of the sub types of UserInteraction.
	String regionsAllowed	// TODO for now NOW, US or global Place 	The regions where the media is allowed. If not specified, then it's assumed to be allowed everywhere. Specify the countries in ISO 3166 format.
	boolean requiresSubscription // TODO - we have this in MediaRights object	Boolean 	Indicates if use of the media require a subscription (either paid or free). Allowed values are true or false (note that an earlier version had 'yes', 'no').
	Date uploadDate //	Date 	Date when this media object was uploaded to this site.
	// TODO  - Need to specify Buy/Free etc.. offers Offer 	An offer to transfer some rights to an item or to provide a service—for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.
	Offer offer	
	
	Organization publisher
	
    static constraints = {
//		duration 			nullable:true
		embedUrl 			nullable:true
		encodingFormat 		nullable:true
		duration 			nullable:true
		expires				nullable:true
		regionsAllowed		nullable:true
		uploadDate			nullable:true
    }

//	static embedded = ['duration']
	
	def beforeValidate() {
		if (name) {
			String friendlyName = "";
			if (publisher?.name) {
				otherUniqueQualifier = publisher?.name
				friendlyName = publisher?.name + "-" + name
			}
			friendlyName = friendlyName.asFriendlyUrl();
			if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
				sanitizedName = friendlyName
			}
		}
	}
}

// TODO associatedArticle	NewsArticle 	A NewsArticle associated with the Media Object.
// TODO int  bitrate //	Text 	The bitrate of the media object.
// TODO contentSize	Text 	File size in (mega/kilo) bytes.
// TODO contentUrl	URL 	Actual bytes of the media object, for example the image file or video file. (previous spelling: contentURL)
//	height	QuantitativeValue
//	or Distance 	The height of the item.
//	width	QuantitativeValue
//	or Distance
// TODO playerType	Text 	Player type required—for example, Flash or Silverlight.
// - Should be part of creativeWork	productionCompany	Organization 	The production company or studio that made the movie, tv/radio series, season, or episode, or media object.
// TODO	publication	PublicationEvent 	A publication event associated with the episode, clip or media object.
