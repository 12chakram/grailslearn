package multiplexonline

class Song extends Media{
	
	Song() {
		mediaKind = "Song"
	}
	
	@Override
	def beforeValidate() {
		if ( movie != null) {
			uniqueTitle = title + "-" +  movie.uniqueTitle
			sanitizedTitle = uniqueTitle?.asFriendlyUrl()
		}
	}

	
	static belongsTo = [movie:Movie]

    static constraints = {
		
    }
}
