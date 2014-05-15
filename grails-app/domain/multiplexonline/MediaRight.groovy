package multiplexonline

class MediaRight implements Serializable {

	Date expiryDate
	Date startingDate
	String geoFilter
	boolean published
	Video video
	Media media
	Publisher publisher
	MonetizeOption monetizeOption


	static constraints = {
		expiryDate nullable: true
		geoFilter nullable: true
		startingDate nullable: true
	}


	@Override
	public String toString() {
		return media.title + " - "+geoFilter;
	}
	
	
}
