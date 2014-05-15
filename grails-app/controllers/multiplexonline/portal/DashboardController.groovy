package multiplexonline.portal

import grails.plugin.springsecurity.annotation.Secured
import multiplexonline.MpoRole;
import multiplexonline.MpoUserRole;
import multiplexonline.User

@Secured(['ROLE_PORTAL_ADMIN','ROLE_PORTAL_USER','ROLE_PUBLISHER_ADMIN','ROLE_PUBLISHER_USER'])
class DashboardController {
	
	def springSecurityService
	def MOUserService
	def currentUser
	String role
	Long existingUser
	

	def index() {
		//def users = User.list()
		//existingUser = users.size()
		//def roles = MpoRole.list()
		
		def usersRoleList = MpoUserRole.list()
		existingUser = usersRoleList.size()
		Long siteUsers = 0
		Long publishAdmins = 0
		Long faceBookUsers = 0
		Long endusers = 0
		Long publishUsers = 0
		usersRoleList.each{
			if(it.mpoRole.authority=="ROLE_PORTAL_USER"){
				siteUsers++
			}else if (it.mpoRole.authority=="ROLE_PUBLISHER_ADMIN"){
			      publishAdmins ++
			}else if (it.mpoRole.authority=="ROLE_PUBLISHER_USER"){
			      publishUsers++
			}else if (it.mpoRole.authority=="ROLE_END_USER"){
			    endusers++
			}
		}	
		
		role = MOUserService.getUserRole()
		if(role.equals("ROLE_PORTAL_ADMIN") || role.equals("ROLE_PORTAL_USER") || role.equals("ROLE_PUBLISHER_ADMIN") || role.equals("ROLE_PUBLISHER_USER")){
			render(view: "/portal/dashboard/index", model:
				[pageTitle:'Dashboard',
				 existingUser :existingUser,
				 publishAdmins:publishAdmins,
				 publishUsers: publishUsers,
				 endusers:endusers,
				 siteUsers:siteUsers
				 ])
		}
		else{
			redirect(controller: "movie", action: "index")
		}
	}
}
