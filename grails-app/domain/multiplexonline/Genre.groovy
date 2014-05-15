package multiplexonline

class Genre implements Serializable {

	String genre
//
//	static hasMany = [mediaGenres: MediaGenre]

	static constraints = {
		genre unique: true
	}

	@Override
	public String toString() {
		return  genre;
	}
	
	
}
