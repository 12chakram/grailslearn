package multiplexonline

import grails.transaction.Transactional
import multiplexonline.User

@Transactional
class MOUserService {
	
	def springSecurityService

    def serviceMethod() {

    }
	
	def getCurrentUser(){
		User.get(springSecurityService.principal.id)
	}
}
