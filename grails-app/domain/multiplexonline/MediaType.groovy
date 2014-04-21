package multiplexonline

class MediaType implements Serializable {

	String type

//	static hasMany = [mediaCollections: MediaCollection,
//	                  medias: Media]
	@Override
	public String toString() {
		return type;
	}
}
