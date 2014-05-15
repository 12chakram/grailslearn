package org.schema

class CreativeRole implements Serializable {
	
	String role
	Organization organization
	SOPerson person
	String personOrg
	
    static fetchMode = [person: 'eager', Organization: 'eager']
	
	def beforeValidate() {
		if (!personOrg) {
			if (organization == null && person == null) personOrg = null;
			else if (person) personOrg = role + ":" + person.name
			else personOrg = role + ":" + organization.name
		}
	}
	
	def beforeInsert() {
		if (!personOrg) {
			if (organization == null && person == null) personOrg = null;
			else if (person) personOrg = role + ":" + person.name
			else personOrg = role + ":" + organization.name
		}
	}
	
	def beforeUpdate() {
		if (!personOrg) {
			if (organization == null && person == null) personOrg = null;
			else if (person) personOrg = role + ":" + person.name
			else personOrg = role + ":" + organization.name
		}
	}
	
	static constraints = {
		organization	nullable:true
		person			nullable:true
		personOrg 		nullable:false, unique:true
    }
	
	@Override public String toString() {
		String value = role + ":";
		if (organization != null) value += organization.name;
		if (person != null) value += person.fullName
		return value
	}
}
