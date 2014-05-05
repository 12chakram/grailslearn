package multiplexonline



class Person implements Serializable {

	
	String fullName
	String imdbName
	String sanitizedName
	Date dateOfBirth
	String mediaName
	String firstName
	String gender
	String lastName
	String middleName
	String avtarUrl
	
	def beforeValidate() {
		if (!fullName) fullName = imdbName
		String friendlyName = fullName?.asFriendlyUrl();
		if (!sanitizedName || !sanitizedName.equals(friendlyName)) {
			sanitizedName = friendlyName
		}
	}

	static constraints = {
		fullName 	unique:true
		sanitizedName unique:true
		imdbName	unique:true
		firstName 	nullable: true
		gender 		nullable: true
		lastName 	nullable: true
		mediaName 	nullable: true
		middleName 	nullable: true
		avtarUrl	nullable: true
		dateOfBirth nullable: true
	}
	
	String getAvtarImageName() {
		if (avtarUrl == null || "".equals(avtarUrl)) return "default-avtar.jpg";
		String extension = avtarUrl.substring((avtarUrl.length() -3), avtarUrl.length());
		String imageName = sanitizedName + '-avtar'+"." + extension;
		return imageName
	}
	
	String toString() {
		return fullName
	}
}
