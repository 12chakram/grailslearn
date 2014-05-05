package multiplexonline

class MoviePromotion extends Media {

   MoviePromotion() {
		mediaKind = "Movie Promotion"
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
	
	@Override
	String getControllerName() {
		return "MoviePromotion"
	}
}
