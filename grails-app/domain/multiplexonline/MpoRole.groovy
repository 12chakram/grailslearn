package multiplexonline

class MpoRole {

	String authority
	String roleName

	static mapping = {
		cache true
	}

	static transients = ['roleName']
	static constraints = {
		authority blank: false, unique: true
	}
}
