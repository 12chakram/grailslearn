package com.grails.learn

class User  extends EeUser{
	
	String cnfpassword
	String fullName
	String email
	String roles
	Long fbid
	
	static transients = ["cnfpassword","roles"]
	
	
	static constraints = {
	    fbid     blank: false,unique: true
		username blank: false
		password blank: false
	}
}
