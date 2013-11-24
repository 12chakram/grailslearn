package com.grails.learn

import com.grails.learn.User

class LoginService {
	
	def userLogin(userName,password){
		User.findByUserNameAndPassword(userName,password)
	
	}
	
	def userLoginByEmail(userName,password){
		User.findByEmailAndPassword(userName,password)
	}

}
