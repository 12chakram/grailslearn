package com.grails.learn

import com.grails.learn.User


class UserService {

  
	def getAllUsers(){
		User.list()
	}
	
	def boolean saveUser(User user){
		
		if(user.save(flush: true)){
			return true
		}else{
		 return false;
		} 	
   }
	

}
