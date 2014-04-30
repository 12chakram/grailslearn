package org.schema

class MOMoviePromotion extends CreativeWork implements Serializable {

	@Override
	def beforeValidate() {
		//super.beforeValidate()
		String friendlyName = name?.asFriendlyUrl();
		if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
			sanitizedName = friendlyName + "-movie-" + movie.sanitizedName
		}
		if (movie) {
			otherUniqueQualifier = movie.sanitizedName;
		}
		if (!type) type = 'MoviePromotion'
	}

	static belongsTo = [movie:SOMovie]
	
    static constraints = {
    }
	
	@Override
	String getImageName() {
		if (!image && movie.image) return movie.getImageName()
		return super.getImageName()
	}
	
	@Override
	String getThumbImageName() {
		if (!image && movie.image) return movie.getThumbImageName()
		return super.getThumbImageName()
			
	}
}