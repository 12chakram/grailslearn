package multiplexonline

import java.util.Date;

class Movie extends Media {
	
	Date releaseDate
	Integer releaseYear
	String synopsis
	String tagLine
	Date usReleaseDate
	
	Movie() {
		mediaKind = "Movie"
	}
	
	static hasMany = [songs:Song, movieClips:MovieClip, moviePromotions:MoviePromotion]
	
    static constraints = {

		releaseDate nullable: true
		releaseYear nullable: true
		synopsis nullable: true
		tagLine nullable: true, maxSize: 1000
		usReleaseDate nullable: true
		
    }
}
