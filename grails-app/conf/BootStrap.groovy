import com.grails.learn.Employee;
import com.grails.learn.EmployeeService;
import com.grails.learn.Scheduler
import com.grails.learn.SchedulerService;

class BootStrap {

	def Scheduler scheduler
	
    def init = { servletContext ->
		
		
		def scheduler  = SchedulerService.findActiveSchedules()
		
		scheduler.each
		{
		 if(it.active){
		 println('yes.................')
		   }
		
		}
		
    }
    def destroy = {
    }
	
	
}
