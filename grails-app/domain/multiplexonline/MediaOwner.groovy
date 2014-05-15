package multiplexonline

import java.io.Serializable;

class MediaOwner implements Serializable{

	String domain
	String name

//	static hasMany = [mediaRights: MediaRight,
//	                  publisherVideos: PublisherVideo]

	static constraints = {
		domain nullable: true
	}
}
