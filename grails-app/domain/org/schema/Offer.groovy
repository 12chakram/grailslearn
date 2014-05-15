package org.schema


//TODO Identify relevant fields from  http://schema.org/Offer - Keep it simple for now.
class Offer implements Serializable {
	String description;
	
	boolean isPPV;
	boolean isFree;
	boolean isMoMoney;
	boolean isAdSupported
	
	Float ppvUSD
	Float ppvINR
	Float momPoints

	static constraints = {
		ppvUSD		nullable:true
		ppvINR		nullable:true
		momPoints 	nullable:true
	}
}
