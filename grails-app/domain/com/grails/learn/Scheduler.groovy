package com.grails.learn

class Scheduler {
	
	
	Long id
	Long empid
	String cronExpression
	boolean active
	String username
	String password
	 
	 static mapping = {
		 
		 table "scheduler"
		 id 			column: "SCHEDULE_ID"
		 empid 			column:	"EMPID"
		 cronExpression column: "CRON_EXPRESSION"
		 active 		column:	"ACTIVE"
		 username 		column:	"USERNAME"
		 password 		column:	"PASSWORD"
		 
		 version false
  }
	 
	  static constraints = {
		  cronExpression(nullable:false,blank:false)
		  active(nullable:false,blank:false)
		  username(nullable:false,blank:false)
		  password(nullable:false,blank:false)
	  }

}
