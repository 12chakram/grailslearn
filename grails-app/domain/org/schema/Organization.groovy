package org.schema


// http://schema.org/Organization

class Organization  extends Thing implements Serializable {

	String email //	Text 	Email address.
	String legalName	// Text 	The official name of the organization, e.g. the registered company name.
	
	
	boolean isMediaPublisher
	String domainName
//	static hasMany = [members:SOPerson,creativeRoles:CreativeRole] //Person member	Person
    
//	static mappedBy = [memberOf:'members']
	
	static constraints = {
		email 		nullable:true
		legalName 	nullable:true
		domainName  nullable:true
    }
	
	def beforeValidate() {
		if (!type) type = "Org"
		if (!otherUniqueQualifier ) otherUniqueQualifier = "-"
		if (name) {
			String friendlyName = name?.asFriendlyUrl();
			if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
				sanitizedName = friendlyName
			}
		}	
	}
}

//	address	PostalAddress 	Physical address of the item.
// TODO	aggregateRating	AggregateRating 	The overall rating, based on a collection of reviews or ratings, of the item.
//	brand	Brand
//	or Organization 	The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
//	TODO	contactPoint	ContactPoint 	A contact point for a person or organization. Supercedes contactPoints.
//	department	Organization 	A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe.
//	duns	Text 	The Dun & Bradstreet DUNS number for identifying an organization or business person.

//	TODO employee	Person 	Someone working for this organization. Supercedes employees.
	//event	Event 	Upcoming or past event associated with this place or organization. Supercedes events.
	//	faxNumber	Text 	The fax number.
	//	founder	Person 	A person who founded this organization. Supercedes founders.
	//	foundingDate	Date 	The date that this organization was founded.
	//	globalLocationNumber	Text 	The Global Location Number (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
	//	hasPOS	Place 	Points-of-Sales operated by the organization or person.
//	TODO interactionCount	Text 	A count of a specific user interactions with this item—for example, 20 UserLikes, 5 UserComments, or 300 UserDownloads. The user interaction type should be one of the sub types of UserInteraction.
//	isicV4	Text 	The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
//	location	Place
//	or PostalAddress 	The location of the event, organization or action.
//  TODO logo	ImageObject
//	makesOffer	Offer 	A pointer to products or services offered by the organization or person.
//	or Organization 	A member of this organization. Supercedes members.
//	naics	Text 	The North American Industry Classification System (NAICS) code for a particular organization or business person.
//	owns	OwnershipInfo
//	or Product 	Products owned by the organization or person.
//	TODO	review	Review 	A review of the item. Supercedes reviews.
//	seeks	Demand 	A pointer to products or services sought by the organization or person (demand).
//	subOrganization	Organization 	A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property.
//	taxID	Text 	The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
//	telephone	Text 	The telephone number.
//	vatID	Text 	The Value-added Tax ID of the organisation or person.

