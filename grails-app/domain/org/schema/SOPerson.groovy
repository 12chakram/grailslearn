package org.schema

// http://schema.org/Person

class SOPerson  extends Thing implements Serializable {
	
//	Thing	about
	String familyName //	Text 	Family name. In the U.S., the last name of an Person. This can be used along with givenName instead of the Name property.
	String givenName	// Text 	Given name. In the U.S., the first name of a Person. This can be used along with familyName instead of the Name property.
	String additionalName //	Text 	An additional name for a Person, can be used for a middle name.
	String fullName
	String imdbName
	String gender 		//	Text 	Gender of the person.
	String honorificPrefix 		//	Text 	An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
	String honorificSuffix		// Text 	An honorific suffix preceding a Person's name such as M.D. /PhD/MSCSW.
	Date birthDate
	Date deathDate
	String email
//	Organization	organization	//	TODO -  should be memberOf What is the best way model - hasOne, belongsTO etc..
									//Organization 	An organization to which the person belongs.

	def beforeValidate() {
		if (givenName && familyName && !fullName) {
			fullName = givenName + " " + familyName
 		}
		if (!fullName) fullName = imdbName
		if (!imdbName) imdbName = fullName
		if (!name) name = fullName
		if (!type) type = 'Person'
		if (!otherUniqueQualifier ) otherUniqueQualifier = "-"
		String friendlyName = type + " " + fullName.asFriendlyUrl();
		if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
			sanitizedName = friendlyName
		}

	}
	
    static constraints = {
		imdbName 				unique:true
		fullName				unique:true
		familyName 				nullable:true	//	Text 	Family name. In the U.S., the last name of an Person. This can be used along with givenName instead of the Name property.
		givenName				nullable:true	// Text 	Given name. In the U.S., the first name of a Person. This can be used along with familyName instead of the Name property.
		additionalName 			nullable:true 	//	Text 	An additional name for a Person, can be used for a middle name.
		gender 					nullable:true 	//	Text 	Gender of the person.
		honorificPrefix 		nullable:true	//	Text 	An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
		honorificSuffix			nullable:true	// Text 	An honorific suffix preceding a Person's name such as M.D. /PhD/MSCSW.
		birthDate				nullable:true
		deathDate				nullable:true
		email					nullable:true
//		organization			nullable:true
    }
}

//	address	PostalAddress 	Physical address of the item.
//	affiliation	Organization 	An organization that this person is affiliated with. For example, a school/university, a club, or a team.
//	alumniOf	EducationalOrganization 	An educational organizations that the person is an alumni of.
// TODO	award	Text 	An award won by this person or for this creative work. Supercedes awards.
//	brand	Brand
//	or Organization 	The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
//	children	Person 	A child of the person.
//	colleague	Person 	A colleague of the person. Supercedes colleagues.
//	contactPoint	ContactPoint 	A contact point for a person or organization. Supercedes contactPoints.
//	duns	Text 	The Dun & Bradstreet DUNS number for identifying an organization or business person.
//	faxNumber	Text 	The fax number.
//	follows	Person 	The most generic uni-directional social relation.
//	globalLocationNumber	Text 	The Global Location Number (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
//	hasPOS	Place 	Points-of-Sales operated by the organization or person.
//	homeLocation	ContactPoint
//	or Place 	A contact location for a person's residence.
//	interactionCount	Text 	A count of a specific user interactions with this item—for example, 20 UserLikes, 5 UserComments, or 300 UserDownloads. The user interaction type should be one of the sub types of UserInteraction.
//	isicV4	Text 	The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
//	jobTitle	Text 	The job title of the person (for example, Financial Manager).
//	knows	Person 	The most generic bi-directional social/work relation.
//	makesOffer	Offer 	A pointer to products or services offered by the organization or person.
// TODO	OrganimemberOf	Organization 	An organization to which the person belongs.
//	naics	Text 	The North American Industry Classification System (NAICS) code for a particular organization or business person.
// TODO	nationality	Country 	Nationality of the person.
//	owns	OwnershipInfo
//	or Product 	Products owned by the organization or person.
//	parent	Person 	A parent of this person. Supercedes parents.
// TODO	performerIn	Event 	Event that this person is a performer or participant in.
//	relatedTo	Person 	The most generic familial relation.
//	seeks	Demand 	A pointer to products or services sought by the organization or person (demand).
//	sibling	Person 	A sibling of the person. Supercedes siblings.
//	spouse	Person 	The person's spouse.
//	taxID	Text 	The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
//	telephone	Text 	The telephone number.
//	vatID	Text 	The Value-added Tax ID of the organisation or person.
//	workLocation	ContactPoint
//	or Place 	A contact location for a person's place of work.
// TODO	worksFor	Organization 	Organizations that the person works for.
