package com.grails.learn

class EmployeeTechSkillSet {
 
	Long id;
	long empid;
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
	
	
	
	static mapping ={
		table "EMPSKILL"
		 empid column : "EMPID"
		 platforms column : "PLATFORMS"
		 programming column : "PROGRAMMING"
		 j2EETechnologies column : "J2EETECHNOLOGIES"
		 frameworks column : "WEB_APP_SERVERS"
		 webTechnologies column : "WEB_TECHNOLOGIES" 
		 databasesTech column: "DATABASES_TECH"
		 web_App_servers column :"web_app_servers WEB_APP_SERVERS"
		 iDE_Tools column : "IDE_TOOLS";
		version false
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
