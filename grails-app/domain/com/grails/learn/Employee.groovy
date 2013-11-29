package com.grails.learn

class Employee {
 
	Long id
	Long empid
	String first_Name
	String last_Name
	Date joingDate
	Long bossid
	Long jobid
	String employeeName
	//String skillSet
	Long deptid 
	String departmentName
	Long expyear
	Long expmonth
	
	
	//static hasMany = [department: Department]
	/*String Platforms = "Windows,LINUX"
	
	String Programming = "Java,J2EE,Groovy"
	
	String J2EETechnologies = "Servlets,JSP,JSF,EJB"
	
	String Frameworks = "Struts,Spring,Hibernate,JPA,Groovy,Grails,Flex"
	
	String WebTechnologies = "HTML,JavaScript,CSS,jQuery"
	
	String DatabasesTech = "Oracle,DB2,MYSQL,PostgreSQL"
	
	String Web_App_servers = "WebSphere,WebLogic,Jboss,ApacheTomcat"
	
	String IDE_Tools = "MyEclipse,Eclipse,SoapUI,SQLDeveloper,Flashbuilder,NeoLoad,Git,SVN,CVS"*/
	
	static transients = ["employeeName","departmentName"]
	
	static mapping ={
		table "EMPLOYEE"
		empid column:"EMPID"
		first_Name column:"FIRSTNAME"
		last_Name column:"LASTNAME"
		bossid column : "BOSS"
		jobid column : "JOB"
		joingDate column : "JOING_DATE"
		deptid column :"DEPTID"
		expyear column :"EXPYEAR"
		expmonth column : "EXPMONTH"
	version false
	}
	
    static constraints = {
		empid(nullable:false,blank:false)
		first_Name(nullable: false,blank:false)
		last_Name(nullable:false,blank:false)
    }
	
	public String toString() {
		return [
			id : id,
			empid : empid,
			first_Name:first_Name,
			last_Name:last_Name,
			joingDate : joingDate,
			bossid : bossid,
			deptid : deptid,
		].toString()
	}
}
