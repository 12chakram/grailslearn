package org.schema


// http://schema.org/CreativeWork

class CreativeWork extends Thing implements Serializable {
	
//	Thing about //	Thing 	The subject matter of the content.
	String contentRating	// TODO Enumerations	Text 	Official rating of a piece of content—for example,'MPAA PG-13'.
	Date datePublished	//Date 	Date of first broadcast/publication. - ReleaseDate for Movie
	String headline	// Text 	Headline of the article
	String inLanguage	// Text 	The language of the content. please use one of the language codes from the IETF BCP 47 standard.
	int interactionCount	// Text 	A count of a specific user interactions with this item—for example, 20 UserLikes, 5 UserComments, or 300 UserDownloads. The user interaction type should be one of the sub types of UserInteraction.
	boolean isFamilyFriendly //	Boolean 	Indicates whether this content is family friendly.
//	Organization publisher //	Organization 	The publisher of the creative work.
	String thumbnailUrl //	URL 	A thumbnail image relevant to the Thing.
	int timeRequired	// Duration TODO: format should be H#M#S#	Approximate or typical time it takes to work with or through this learning resource for the typical intended target audience, e.g. 'P30M', 'P1H25M'.
	String timeRequiredText
	boolean isPublished
	
	static hasMany = [creativeRoles: CreativeRole, genres:SOGenre]
//	static embedded = ['timeRequired']
	
//	static mapping = {
//		tablePerHierarchy true
//		discriminator column: "cw_type"
//	}
	
    static constraints = {
		contentRating 	nullable:true
		datePublished 	nullable:true
		headline		nullable:true
		thumbnailUrl	nullable:true
		timeRequiredText(matches: '[0-3]\\.[0-5]?[0-9]\\.[0-5]?[0-9]')
		inLanguage(inList: ['Hindi', 'Telugu', 'Tamil'])
    }
	
	def beforeValidate() {
		if (name && !sanitizedName) {
			String friendlyName = name.asFriendlyUrl();
			if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
				sanitizedName = friendlyName
			}
			if (inLanguage) {
				otherUniqueQualifier = inLanguage
			}
		}
		if (timeRequiredText) {
			String[] tokens = timeRequiredText.split("\\.")
			int hrs = tokens[0] as int
			int min = tokens[1] as int
			int sec = tokens[2] as int
			timeRequired = hrs*3600 + min*60 + sec
		}
	}
	
	String getImageName() {
		if (!image) return "default.jpg"
		String imageName = name + ".jpg";
		return imageName
	}
	
	String getThumbImageName() {
		if (!image) return "default-thumbnail.jpg"
		String imageName = name + '-thumbnail'+".jpg"
		return imageName
	}
}


//	accessibilityAPI	Text 	Indicates that the resource is compatible with the referenced accessibility API (WebSchemas wiki lists possible values).
//	accessibilityControl	Text 	Identifies input methods that are sufficient to fully control the described resource (WebSchemas wiki lists possible values).
//	accessibilityFeature	Text 	Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility (WebSchemas wiki lists possible values).
//	accessibilityHazard	Text 	A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3. (WebSchemas wiki lists possible values)
	// Person accountablePerson 	//	Person 	Specifies the Person that is legally accountable for the CreativeWork.
// TODO	aggregateRating	AggregateRating 	The overall rating, based on a collection of reviews or ratings, of the item.
//	alternativeHeadline	Text 	A secondary title of the CreativeWork.
//	associatedMedia	MediaObject 	The media objects that encode this creative work. This property is a synonym for encodings.
//	audience	Audience 	The intended audience of the item, i.e. the group for whom the item was created.
//	audio	AudioObject 	An embedded audio object.
//	TODO author	Person - Should be producer
//	TODO: contributor	Person Publisher - Person
//	TODO: or Organization 	Publisher organization A secondary contributor to the CreativeWork.
//	copyrightHolder	Person
//	or Organization 	The party holding the legal copyright to the CreativeWork.
//	copyrightYear	Number 	The year during which the claimed copyright for the CreativeWork was first asserted.
//	creator	Person
//	or Organization 	The creator/author of this CreativeWork or UserComments. This is the same as the Author property for CreativeWork.
//	Date dateCreated //Release Date	Date 	The date on which the CreativeWork was created.
//	dateModified	Date 	The date on which the CreativeWork was most recently modified.
//	or Organization - Production Company	The author of this content. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
//	award	Text 	An award won by this person or for this creative work. Supercedes awards.
//	citation	CreativeWork
//	or Text 	A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.
//	TODO comment	Comment - Need to incorporate comments
//	or UserComments 	Comments, typically from users, on this CreativeWork.
//	commentCount	Integer 	The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.
//	contentLocation	Place 	The location of the content.
//	TODO:discussionUrl	URL 	A link to the page containing the comments of the CreativeWork.
//	TODO: editor	Person 	Specifies the Person who edited the CreativeWork.
//	educationalAlignment	AlignmentObject 	An alignment to an established educational framework.
//	educationalUse	Text 	The purpose of a work in the context of education; for example, 'assignment', 'group work'.
	// TODOencoding	MediaObject  //Video Objects : 	A media object that encode this CreativeWork. Supercedes encodings.
// TODO not sure what this means : interactivityType	Text 	The predominant mode of learning supported by the learning resource. Acceptable values are 'active', 'expositive', or 'mixed'.
//	isBasedOnUrl	URL 	A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html
// TODO keywords	Text 	The keywords/tags used to describe this content.
//learningResourceType	Text 	The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
//mentions	Thing 	Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.
//TODO interisting for movie rights database : offers	Offer 	An offer to transfer some rights to an item or to provide a service—for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.
//	TODO 	provider	Person - Could be the publishing company
//	TODO	or Organization 	The organization or agency that is providing the service.
//	publishingPrinciples	URL 	Link to page describing the editorial principles of the organization primarily responsible for the creation of the CreativeWork.
//	review	Review 	A review of the item. Supercedes reviews.
//	TODO : is it Production Company -	sourceOrganization	Organization 	The Organization on whose behalf the creator was working.
//	text	Text 	The textual content of this CreativeWork.
//	TODO	typicalAgeRange	Text 	The typical expected age range, e.g. '7-9', '11-'.
//	version	Number 	The version of the CreativeWork embodied by a specified resource.
//	TODO How is this different from MediaObject - video	VideoObject 	An embedded video object.

