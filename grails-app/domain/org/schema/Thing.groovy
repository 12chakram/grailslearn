package org.schema

abstract class Thing implements Serializable {
	String alternateName  	//	Text 	An alias for the item.
	String description		//  Text 	A short description of the item.
	String image			//  URL 	URL of an image of the item.
	String name				//  Text 	The name of the item.
	String sameAs			//  URL 	URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Freebase page, or official website.
	String url				//  URL 	URL of the item.
	
	String type
	String otherUniqueQualifier
	String sanitizedName
	
	
	static mapping = {
		tablePerHierarchy false
	}
	
	static constraints = {
		name 					unique: ['type', 'otherUniqueQualifier']
		sanitizedName			unique: ['type', 'otherUniqueQualifier']
		alternateName 			nullable:true
		description				nullable:true
		image					nullable:true
		sameAs					nullable:true
		url						nullable:true
		name(blank:false)
	}
	
	@Override
	public String toString() {
		return  name;
	}
}
