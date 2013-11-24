package com.grails.learn

import com.grails.learn.User

class UserService {

  
	def getAllUsers(){
		
		User.list()
		
	}
	
}
