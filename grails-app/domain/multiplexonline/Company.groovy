package multiplexonline

class Company implements Serializable {

	String companyName

	transient static hasMany = [mediaRoles: MediaRole]
}
