package org.schema

class CreativeRole implements Serializable {
	
	String role
	Organization organization
	SOPerson person
	String personOrg
	
    static fetchMode = [person: 'eager', Organization: 'eager']
	
	def beforeValidate() {
		if (organization == null && person == null) personOrg = null;
		else personOrg = "NOT_NULL"
	}
	
	def beforeInsert() {
		if (organization == null && person == null) personOrg = null;
		else personOrg = "NOT_NULL"
	}
	
	def beforeUpdate() {
		if (organization == null && person == null) personOrg = null;
		else personOrg = "NOT_NULL"
	}
	
	static constraints = {
		organization	nullable:true
		person			nullable:true
		personOrg 		nullable:false
    }
	
	@Override public String toString() {
		String value = " " + role + " - ";
		if (organization != null) value += organization.name;
		if (person != null) value += person.fullName
		return value
	}
}
