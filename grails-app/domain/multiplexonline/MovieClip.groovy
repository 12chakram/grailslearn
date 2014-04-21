package multiplexonline

class MovieClip extends Media {

	MovieClip() {
		mediaKind = "Movie Clip"
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
