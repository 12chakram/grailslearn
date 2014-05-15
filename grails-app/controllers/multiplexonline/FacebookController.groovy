package multiplexonline

import java.util.Locale;

class FacebookController {
	
	def messageSource
	def facebookGraphService
	def springSecurityService
    def index() { }
	
	def facebookLogin(){
		
		def command = facebookGraphService.getFacebookProfile()
		
		//println(command)
		
		/*birthday:09/12/1982, link:https://www.facebook.com/vayyala.kumar, locale:en_US, 
		updated_time:2012-12-24T19:54:05+0000, id:100000002504592, first_name:Vayyala, 
		timezone:5.5, username:vayyala.kumar, verified:true, name:Vayyala Kumar, 
		favorite_teams:[[id:198358615428, name:Mumbai Indians], 
			[id:229321243755229, name:ROYAL CHALLENGER BANGLORE], [id:190313434323691, name:Indian Cricket Team]], 
		last_name:Kumar, gender:male
		*/
		/*println(command.birthday)
		println(command.link)
		println(command.first_name)
		println(command.last_name)
		println(command.gender)
		println(command.name)*/
	
		def newdate = new Date().parse("dd/MM/yyyy",command.birthday)
		
		def user = User.findByFbid(command.id)
		
		if(user == null){
		def mpofacebookUser = new User(
			username: command.name,
			password: command.id.toString(),
			fullName : command.first_name+command.last_name,
			email : 'kumarvayyala@outlook.com',
			mobile:'XXXXXXXXXX',
			gender :command.gender,
			dob : newdate,
			fbid:command.id,
			enabled: true).save(failOnError: true)
		    addRoles(mpofacebookUser)
			facebookGraphService.publishWall("Welcome to multiplexOnline")
			springSecurityService.reauthenticate(mpofacebookUser.username,command.id.toString())
			redirect(controller:"home",action:"index_sivaji")
		}else{
		    springSecurityService.reauthenticate(user.username,command.id.toString())
		    redirect(controller:"home",action:"index_sivaji")
		}	
	}
	
	protected void addRoles(mpofacebookUser) {
		def enduserRole  = MpoRole.findByAuthority("ROLE_END_USER")
		println('inside addRole class')
		mpofacebookUser.withTransaction {
			  MpoUserRole.create mpofacebookUser, enduserRole
		  }
	}
}


