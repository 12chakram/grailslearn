package com.grails.learn

class Employee {

	Long empid
	String first_Name
	String last_Name
	Long deptno
	Date joingDate
	Long bossid
	Long jobid
	String employeeName
	String skillSet
	
	String Platforms = "Windows,LINUX"
	
	String Programming = "Java,J2EE,Groovy"
	
	String J2EETechnologies = "Servlets,JSP,JSF,EJB"
	
	String Frameworks = "Struts,Spring,Hibernate,JPA,Groovy,Grails,Flex"
	
	String WebTechnologies = "HTML,JavaScript,CSS,jQuery"
	
	String DatabasesTech = "Oracle,DB2,MYSQL,PostgreSQL"
	
	String Web_App_servers = "WebSphere,WebLogic,Jboss,ApacheTomcat"
	
	String IDE_Tools = "MyEclipse,Eclipse,SoapUI,SQLDeveloper,Flashbuilder,NeoLoad,Git,SVN,CVS"
	
	static transients = ["employeeName","skillSet","Platforms","Programming","J2EETechnologies","Frameworks","WebTechnologies","DatabasesTech","Web_App_servers","IDE_Tools"]
	
	static mapping ={
		table "EMPLOYEE"
		empid column:"EMPID"
		first_Name column:"FIRSTNAME"
		last_Name column:"LASTNAME"
		deptno column:"DEPTNO"
		bossid column : "BOSS"
		jobid column : "JOB"
		joingDate column : "JOING_DATE"
	version false
	}
	
    static constraints = {
		empid(nullable:false,blank:false)
		first_Name(nullable: false,blank:false)
		last_Name(nullable:false,blank:false)
    }
}
