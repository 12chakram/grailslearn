package com.grails.learn

class User {

	String userName
	String password
	String roles
	String cnfpassword
	String fullName
	String email
	
	static transients = ["cnfpassword"]
	
	static mapping ={
		table "New_USer"
		userName column:"USER_NAME"
		password column:"PASSWORD"
		roles column:"ROLES"
		fullName column:"FULL_NAME"
		email column:"EMAIL"
	version false
	}
	
    static constraints = {
		userName(nullable:false,blank:false)
		password(nullable: false,blank:false)
		roles(nullable:false,blank:false)
    }
}
