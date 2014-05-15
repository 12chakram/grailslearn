package multiplexonline

class MediaRole implements Serializable {

	String role
	Company company
	Person person
	String personCompany

//	static hasMany = [mediaMediaRoles: MediaMediaRole]
//	static belongsTo = [Company, Person]

	static fetchMode = [person: 'eager', company: 'eager']
	
	def beforeValidate() {
		if (company == null && person == null) personCompany = null;
		else personCompany = "NOT_NULL"
	}
	
	def beforeInsert() {
		if (company == null && person == null) personCompany = null;
		else personCompany = "NOT_NULL"
	}
	
	def beforeUpdate() {
		if (company == null && person == null) personCompany = null;
		else personCompany = "NOT_NULL"
	}
	
	static constraints = {
		company	nullable:true
		person	nullable:true
		personCompany nullable:false
//		person(validator: {obj->
//			if (obj.company == null && obj.person == null) return ['Company and Person can not be null']
//			 })
//		company(validator: {obj->
//			if (obj.company == null && obj.person == null) return ['Company and Person can not be null']
//			 })
		role (unique: ['company', 'person'])
	}
	
	@Override public String toString() {
		String value = " " + role + " - ";
		if (company != null) value += company.companyName;
		if (person != null) value += person.fullName
		return value
		
	}
}
