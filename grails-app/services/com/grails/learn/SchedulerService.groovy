package com.grails.learn



class SchedulerService {
	
	
	def static Collection<Scheduler>findActiveSchedules(){
		
		Scheduler.findAll()
		
	}

}



