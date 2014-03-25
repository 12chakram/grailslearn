import com.grails.learn.EeRole
import com.grails.learn.EeUserEeRole;
import com.grails.learn.Scheduler
import com.grails.learn.SchedulerService
import com.grails.learn.User

class BootStrap {

	def Scheduler scheduler
	
	def springSecurityService
	
	def init = { servletContext ->
		def scheduler  = SchedulerService.findActiveSchedules()
		scheduler.each {
			if(it.active){
				println('yes.................')
			}
		}
		
		
		// creating user roles into db
		
		
		def userRole = EeRole.findByAuthority('ROLE_EE_USER') ?: new EeRole(authority: 'ROLE_EE_USER').save(failOnError: true)
		def adminRole = EeRole.findByAuthority('ROLE_EE_ADMIN') ?: new EeRole(authority: 'ROLE_EE_ADMIN').save(failOnError: true)
		def publisherUserRole = EeRole.findByAuthority('ROLE_EE_PUBLISHER_USER') ?: new EeRole(authority: 'ROLE_EE_PUBLISHER_USER').save(failOnError: true)
		def publisherAdminRole = EeRole.findByAuthority('ROLE_EE_PUBLISHER_ADMIN') ?: new EeRole(authority: 'ROLE_EE_PUBLISHER_ADMIN').save(failOnError: true)
		
		
		def adminUser = User.findByUsername('eeadmin') ?: new User(
			username: 'eeadmin',
			password: springSecurityService.encodePassword('eeadmin'),
			fullName : 'adminee',
			email : 'kumarvayyala@outlook.com',
			enabled: true).save(failOnError: true)
			
		def user = User.findByUsername('eeuser') ?: new User(
			username: 'eeuser',
			password:'eeuser',
			fullName : 'useree',
			email : 'kumar.v18@gmail.com',
			enabled: true).save(failOnError: true)
			
		def publisherUser = User.findByUsername('publisheruser') ?: new User(
			username: 'publisheruser',
			password:'publisheruser',
			fullName : 'publisheruseree',
			email : 'chakram12@hotmail.com',
			enabled: true).save(failOnError: true)
	
		
		def publisherAdmin = User.findByUsername('publisheradmin') ?: new User(
			username: 'publisheradmin',
			password:'publisheradmin',
			fullName : 'publisheradminee',
			email : 'chakram712@yahoo.com',
			enabled: true).save(failOnError: true)

	  if (!adminUser.authorities.contains(adminRole)) {
		   EeUserEeRole.create adminUser, adminRole
	  }
	  
	  if (!user.authorities.contains(userRole)) {
		  EeUserEeRole.create user, userRole
	 }
	  
	  if (!publisherUser.authorities.contains(publisherUserRole)) {
		  EeUserEeRole.create publisherUser, publisherUserRole
	 }
	
	  if (!publisherAdmin.authorities.contains(publisherAdminRole)) {
		  EeUserEeRole.create publisherAdmin, publisherAdminRole
	 }
		
		
	}
    def destroy = {
    }
	
	
}
