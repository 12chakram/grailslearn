package multiplexonline

import java.util.Date;

import org.hibernate.cfg.FkSecondPass;

class User  extends MpoUser{
	
	String cnfpassword
	String fullName
	String email
	String roles
	String mobile
	String gender
	Date dob
	Long fbid
	
	
	static transients = ["cnfpassword","roles"]
	
	
	static constraints = {
		username blank: false, unique: true
		password blank: false
		mobile blank: false
		gender blank :false
		dob blanck :false
	}
}
