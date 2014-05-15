package multiplexonline


import com.sun.org.apache.xalan.internal.xsltc.compiler.Import;

import grails.transaction.Transactional
import multiplexonline.User

@Transactional
class MOUserService {
	
	def springSecurityService
	def currentUser
	String role
	
	   def getCurrentUser(){
		   User.get(springSecurityService.principal.id)
		}
	   
	   def getUserRole(){
		   
		   if (springSecurityService.isLoggedIn()) {
			   currentUser = springSecurityService.getCurrentUser()
			   def userRole = springSecurityService.getPrincipal().getAuthorities()
			  return role = userRole.getAt(0).toString()
		   }
		   
	   }
}
