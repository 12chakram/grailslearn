package com.grails.learn

class EmployeeTechSkillSet {
 
	String platforms;
	String programming;
	String j2EETechnologies;
	String frameworks;
	String webTechnologies;
	String databasesTech;
	String web_App_servers;
	String iDE_Tools;
	
    static constraints = {
		platforms(nullable:false,blank:false)
		programming(nullable: false,blank:false)
		j2EETechnologies(nullable:false,blank:false)
		frameworks(nullable:false,blank:false)
		webTechnologies(nullable: false,blank:false)
		databasesTech(nullable:false,blank:false)
		web_App_servers(nullable: false,blank:false)
		iDE_Tools(nullable:false,blank:false)
    }
	
	public String toString() {
		return [
			id : id,
			platforms : platforms,
			programming:programming,
			j2EETechnologies:j2EETechnologies,
			frameworks : frameworks,
			webTechnologies : webTechnologies,
			databasesTech : databasesTech,
			web_App_servers : web_App_servers,
			iDE_Tools : iDE_Tools
		].toString()
	}
	
}
