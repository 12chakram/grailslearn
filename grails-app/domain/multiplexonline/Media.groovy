package multiplexonline

class Media implements Serializable {

	String title
	String uniqueTitle
	String sanitizedTitle
	String iinName
	String language
	String lpHires
	String lpMedres
	String ppHiRes
	String ppMedRes
	String mediaKind
	boolean published
	Date publishedDate
	float rating
	int ratingCount
	int runningTime
	MediaType mediaType
	
	def beforeValidate() {
		if (!uniqueTitle) uniqueTitle = language + "-" + title
		if (!sanitizedTitle) sanitizedTitle = uniqueTitle?.asFriendlyUrl()
	}

	String getImageName() {
		if (lpHires == null || "".equals(lpHires)) return lpHires;
		String extension = lpHires.substring((lpHires.length() -3), lpHires.length());
		String imageName = title + "." + extension;
	}
	
	String getThumbImageName() {
		if (lpHires == null || "".equals(lpHires)) return "default-thumbnail.jpg";
		String extension = lpHires.substring((lpHires.length() -3), lpHires.length());
		String imageName = title + '-thumbnail'+"." + extension;
		return imageName
	}

	static hasMany = [genres: Genre,
	                  mediaRoles: MediaRole,
	                  mediaRights: MediaRight]
//	static belongsTo = [MediaType]
//


	static constraints = {
		sanitizedTitle 		unique:true  //As an alternative, you may decide to make sanitizedTitle replace the default id.
		title 				maxSize: 200
		uniqueTitle			maxSize: 200, unique:true
		iinName 			nullable: true, maxSize: 200
		language 			maxSize: 15
		lpHires 			nullable: true
		lpMedres 			nullable: true
		mediaKind 			nullable: true
		mediaType			nullable: true
		ppHiRes 			nullable: true
		ppMedRes 			nullable: true
		publishedDate 		nullable: true
	}
//	
//	static mapping = {
//		ratingCount 	defaultValue: 0
//		rating	 		defaultValue: 0
//		published		defaultValue: false
//	 }
}
