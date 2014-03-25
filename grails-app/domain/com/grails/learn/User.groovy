package com.grails.learn

class User  extends EeUser{
	
	String cnfpassword
	String fullName
	String email
	String roles
	
	static transients = ["cnfpassword","roles"]
	
	
	static constraints = {
		username blank: false, unique: true
		password blank: false
	}
}
