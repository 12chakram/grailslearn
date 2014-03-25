package com.grails.learn

import com.grails.learn.User
import com.grails.learn.EeRole

class UserService {
	
	def springSecurityService

  
	def getAllUsers(){
		User.list()
	}
	
	def boolean saveUser(User user,String role){
		println(role)
		String roles = role.toString().toUpperCase()
		def userRole = EeRole.findByAuthority(roles)
		def creatinguser = User.findByUsername(user.username) ?: new User(
			username: user.username,
			password: user.password,
			fullName : user.fullName,
			email : user.email,
			enabled: true).save(failOnError: true)
		
		if (!creatinguser.authorities.contains(userRole)) {
			EeUserEeRole.create creatinguser, userRole
	   }
		if(creatinguser!=null){
			return true
		}else{
		 return false;
		} 	
   }

}
