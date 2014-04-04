	package com.grails.learn
	
	
	import com.grails.learn.LoginService
	import com.grails.learn.UserService
	
	class MyuserController {
	
	LoginService loginService
	UserService userService
	
		static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
		def index() {
	if(session.user){
			 redirect(action: "list", params: params)
	}else{
	render(view:"index")
	}
		}
	
		def list(Integer max) {
			params.max = Math.min(max ?: 10, 100)
	def user = session.getAttribute("logedinUser");
			[userInstanceList: User.list(params), userInstanceTotal: User.count(),userName : user.fullName,userId : user.id,role:user.roles]
		}
	
		def create() {
			[userInstance: new User(params)]
		}
	
		def save() {
			def userInstance = new User(params)
	//!userInstance.save(flush: true)
			if (!userService.saveUser(userInstance)) {
				render(view: "create", model: [userInstance: userInstance])
				return
			}
	
			flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
			redirect(action: "show", id: userInstance.id)
		}
	
		def show(Long id) {
			def userInstance = User.get(id)
			if (!userInstance) {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "list")
				return
			}
	
			[userInstance: userInstance]
		}
	
		def edit(Long id) {
			def userInstance = User.get(id)
			if (!userInstance) {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "list")
				return
			}
	
			[userInstance: userInstance]
		}
	
		def update(Long id, Long version) {
			def userInstance = User.get(id)
			if (!userInstance) {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "list")
				return
			}
	
			if (version != null) {
				if (userInstance.version > version) {
					userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
							  [message(code: 'user.label', default: 'User')] as Object[],
							  "Another user has updated this User while you were editing")
					render(view: "edit", model: [userInstance: userInstance])
					return
				}
			}
	
			userInstance.properties = params
	
			if (!userInstance.save(flush: true)) {
				render(view: "edit", model: [userInstance: userInstance])
				return
			}
	
			flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
			redirect(action: "show", id: userInstance.id)
		}
	
		def delete(Long id) {
			def userInstance = User.get(id)
			if (!userInstance) {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "list")
				return
			}
	
			try {
				userInstance.delete(flush: true)
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "list")
			}
			catch (Exception e) {
				flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
				redirect(action: "show", id: id)
			}
		}
	
	// custom methods
	
	def login(){
	
	def userName = request.getParameter("userName")
	def password = request.getParameter("password")
	
	def user;
	if(userName.contains("@")){
	user =	loginService.userLoginByEmail(userName, password)
	}else{
	user =	loginService.userLogin(userName, password)
	}
	
	if(user){
	session.allUsers = userService.getAllUsers()
	session.user = userName
	session.LoggedIn="yes"
	session.setAttribute("logedinUser", user)
	if(user.roles.equals("user")){
	redirect(controller:"home",action:"index")
	}else{
	redirect(controller:"user",action:"list")
	}
	//redirect(action:"userspage")
	}else{
	flash.message = "Invalid credentials"
	redirect(action:"index")
	}
	
	}// login
	
	
	
	def register(){
	render(view:"register")
	}
	
	def logout(){
	session.invalidate();
	redirect(action:"index")
	}
	
	def editProfile(Long id){
	
	def userInstance = User.get(id)
	if (!userInstance) {
	flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
	redirect(controller:"user" ,action: "index")
	return
	}
			
	[userInstance: userInstance, role:userInstance.roles]
	
	}
	}