package org.schema

class MOSong extends CreativeWork {
	
	@Override
	def beforeValidate() {
		String friendlyName = name?.asFriendlyUrl();
		sanitizedName = friendlyName + "-movie-" + movie?.sanitizedName
		otherUniqueQualifier = movie?.sanitizedName;
		inLanguage = movie?.inLanguage
		type = 'Song'
		super.beforeValidate()
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
