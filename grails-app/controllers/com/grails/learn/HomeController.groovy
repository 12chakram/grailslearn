package com.grails.learn

import com.grails.learn.UserService

class HomeController {
	
	
	UserService userService
	List<User> users
	User user
   def getUsers(){
	   user = session.getAttribute("logedinUser");
	    if(session.user){
	     users=  userService.getAllUsers()
			  if(users){
				  session.allUsers = users
				  if(user.roles.equals("user")){
				     redirect(action:"index")
				  }else{
				  redirect(controller:"user",action:"list")
				}
        	} 
	    }// if
		else{
			redirect(controller:"user",action:"index")
			//else
		}
   
	}//getUser
   def index(Integer max) { 
	   params.max = Math.min(max ?: 8, 100)
	   user = session.getAttribute("logedinUser");
	   [userInstanceList: User.list(params), userInstanceTotal: Integer.parseInt("11"),userName : user.userName,userId : user.id]
   }
	  
}
    
   

	
	
    

