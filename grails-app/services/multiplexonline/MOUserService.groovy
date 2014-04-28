package multiplexonline


import com.sun.org.apache.xalan.internal.xsltc.compiler.Import;

import grails.transaction.Transactional
import multiplexonline.User

@Transactional
class MOUserService {
	
	def springSecurityService
	
	   def getCurrentUser(){
		   User.get(springSecurityService.principal.id)
		}
}
