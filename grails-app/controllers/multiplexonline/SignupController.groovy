package multiplexonline

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.authentication.dao.NullSaltSource
import grails.plugin.springsecurity.ui.RegistrationCode
import groovy.text.SimpleTemplateEngine
import grails.plugin.springsecurity.ui.RegisterController


class SignupController extends grails.plugin.springsecurity.ui.RegisterController {
	
		// override default value from base class
		static defaultAction = 'index'
	
		// override default value from base class
		static allowedMethods = [register: 'POST']
	
		def mailService
		def messageSource
		def saltSource
		def simpleCaptchaService
		def RegisterController
	
	def index() {

		String token = params.t
		removeDateParams(params)

		def copy = [:] + (flash.chainedParams ?: [:])
		copy.remove 'controller'
		copy.remove 'action'

		if(token==null || token==''){
			[command: new RegisterCommand(copy)]
		}else{
			def invitationCode = token ? InvitationCode.findByToken(token) : null
			if (!invitationCode) {
				flash.error = message(code: 'spring.security.ui.resetPassword.badCode')
				redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
				return
			}
			def command = new RegisterCommand(copy)
			command.email = invitationCode.emailTo
			command.username = invitationCode.inviteename
			command.roles = invitationCode.role
			[command:command]
		}
	}
	
		def register(RegisterCommand command) {
			
			removeDateParams(params)

			if (command.hasErrors()) {
				render view: 'index', model: [command: command]
				return
			}
			String salt = saltSource instanceof NullSaltSource ? null : command.username
			Long fbid = 123456
			def user = lookupUserClass().newInstance(email: command.email,password:command.password,username: command.username,
				fullName :command.username,mobile :command.mobile,gender:command.gender,dob:command.dob,fbid:fbid,
				enabled: true)
			
			String userSelectedRole = command.roles?  command.roles :'ROLE_END_USER'
			boolean captchaValid = simpleCaptchaService.validateCaptcha(params.captcha)
			RegistrationCode registrationCode = null
			if(captchaValid){
				 registrationCode = springSecurityUiService.register(user, command.password, salt)
			}
			if (registrationCode == null || registrationCode.hasErrors()) {
				removeDateParams(params)
				// null means problem creating the user
				flash.error = message(code: 'spring.security.ui.register.miscError')
				flash.chainedParams = params
				redirect action: 'index'
				return
			}
			addRoles(user,userSelectedRole)
			String url = generateLink('verifyRegistration', [t: registrationCode.token])
	
			def conf = SpringSecurityUtils.securityConfig
			def body = conf.ui.register.emailBody
			if (body.contains('$')) {
				body = evaluate(body, [user: user, url: url])
			}
			mailService.sendMail {
				to command.email
				from conf.ui.register.emailFrom
				subject conf.ui.register.emailSubject
				//html body.toString()
				html g.render(template:"mymail",model:[user:user])
			}
			springSecurityService.reauthenticate user.username
			redirect(controller: "home", action: "index",model:[emailSent: true])
			//render view: 'index',  model: [emailSent: true]
		}
	
		def verifyRegistration() {
	
			def conf = SpringSecurityUtils.securityConfig
			String defaultTargetUrl = conf.successHandler.defaultTargetUrl
	
			String token = params.t
	
			def registrationCode = token ? RegistrationCode.findByToken(token) : null
			if (!registrationCode) {
				flash.error = message(code: 'spring.security.ui.register.badCode')
				redirect uri: defaultTargetUrl
				return
			}
	
			def user
			// TODO to ui service
			RegistrationCode.withTransaction { status ->
				String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName
				user = lookupUserClass().findWhere((usernameFieldName): registrationCode.username)
				if (!user) {
					return
				}
				user.accountLocked = false
				user.save(flush:true)
				def UserRole = lookupUserRoleClass()
				def Role = lookupRoleClass()
				for (roleName in conf.ui.register.defaultRoleNames) {
					UserRole.create user, Role.findByAuthority(roleName)
				}
				registrationCode.delete()
			}
	
			if (!user) {
				flash.error = message(code: 'spring.security.ui.register.badCode')
				redirect uri: defaultTargetUrl
				return
			}
	
			springSecurityService.reauthenticate user.username
	
			flash.message = message(code: 'spring.security.ui.register.complete')
			redirect uri: conf.ui.register.postRegisterUrl ?: defaultTargetUrl
		}
	
		def forgotPassword() {
			if (!request.post) {
				// show the form
				return
			}
	
			String username = params.username
			if (!username) {
				flash.error = message(code: 'spring.security.ui.forgotPassword.username.missing')
				redirect action: 'forgotPassword'
				return
			}
	
			String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName
			def user = lookupUserClass().findWhere((usernameFieldName): username)
			if (!user) {
				flash.error = message(code: 'spring.security.ui.forgotPassword.user.notFound')
				//redirect action: 'forgotPassword'
				render view: 'forgotPassword', model: [notFound:true]
				return
			}
	
			def registrationCode = new RegistrationCode(username: user."$usernameFieldName")
			registrationCode.save(flush: true)
	
			String url = generateLink('resetPassword', [t: registrationCode.token])
	
			def conf = SpringSecurityUtils.securityConfig
			def body = conf.ui.forgotPassword.emailBody
			if (body.contains('$')) {
				body = evaluate(body, [user: user, url: url])
			}
			mailService.sendMail {
				to user.email
				from conf.ui.forgotPassword.emailFrom
				subject 'Multiplex Online account password reset'
				html body.toString()
			}
	
			[emailSent: true]
		}
	
		def resetPassword(ResetPasswordCommand command) {
	
			String token = params.t
	
			def registrationCode = token ? RegistrationCode.findByToken(token) : null
			if (!registrationCode) {
				flash.error = message(code: 'spring.security.ui.resetPassword.badCode')
				redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
				return
			}
	
			if (!request.post) {
				return [token: token, command: new ResetPasswordCommand()]
			}
	
			command.username = registrationCode.username
			command.validate()
	
			if (command.hasErrors()) {
				return [token: token, command: command]
			}
	
			String salt = saltSource instanceof NullSaltSource ? null : registrationCode.username
			RegistrationCode.withTransaction { status ->
				String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName
				def user = lookupUserClass().findWhere((usernameFieldName): registrationCode.username)
				user.password = springSecurityUiService.encodePassword(command.password, salt)
				user.save()
				registrationCode.delete()
			}
	
			springSecurityService.reauthenticate registrationCode.username
	
			flash.message = message(code: 'spring.security.ui.resetPassword.success')
	
			def conf = SpringSecurityUtils.securityConfig
			String postResetUrl = conf.ui.register.postResetUrl ?: conf.successHandler.defaultTargetUrl
			redirect uri: postResetUrl
		}
	
		protected String generateLink(String action, linkParams) {
			createLink(base: "$request.scheme://$request.serverName:$request.serverPort$request.contextPath",
					controller: 'signup', action: action,
					params: linkParams)
		}
	
		protected String evaluate(s, binding) {
			new SimpleTemplateEngine().createTemplate(s).make(binding)
		}
	
		static boolean checkPasswordMinLength(String password, command) {
			def conf = SpringSecurityUtils.securityConfig
	
			int minLength = conf.ui.password.minLength instanceof Number ? conf.ui.password.minLength : 8
	
			password && password.length() >= minLength
		}
	
		static boolean checkPasswordMaxLength(String password, command) {
			def conf = SpringSecurityUtils.securityConfig
	
			int maxLength = conf.ui.password.maxLength instanceof Number ? conf.ui.password.maxLength : 64
	
			password && password.length() <= maxLength
		}
	
		static boolean checkPasswordRegex(String password, command) {
			def conf = SpringSecurityUtils.securityConfig
	
			String passValidationRegex = conf.ui.password.validationRegex ?:
					'^.*(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&]).*$'
	
			password && password.matches(passValidationRegex)
		}
		
		protected void addRoles(user,userSelectedRole) {
			
			def conf = SpringSecurityUtils.securityConfig
			user.withTransaction {
				def MpoUserRole = lookupUserRoleClass()
				def MpoRole = lookupRoleClass()
				  def roleName = userSelectedRole
				  MpoUserRole.create user, MpoRole.findByAuthority(roleName)
			  }
		}
		
		protected void removeDateParams(params) {
			params.remove("dob_day")
			params.remove("dob_month")
			params.remove("dob_year")
			params.remove("_toc")
			params.remove("dob_minute")
			params.remove("dob_value")
			params.remove("struct")
		}
    }
	
	class RegisterCommand {
			String username
			String email
			String password
			String password2
			String roles
			String mobile
			String gender
			Date dob = new Date()
			boolean toc
		
			def grailsApplication
		
			static constraints = {
				username blank: false, validator: { value, command ->
					if (value) {
						def User = command.grailsApplication.getDomainClass(
							SpringSecurityUtils.securityConfig.userLookup.userDomainClassName).clazz
						if (User.findByUsername(value)) {
							return 'registerCommand.username.unique'
						}
					}
				}
				email blank: false, email: true
				password blank: false, validator: RegisterController.passwordValidator
				password2 validator: RegisterController.password2Validator
			}
		}
		
		class ResetPasswordCommand {
			String username
			String password
			String password2
		
			static constraints = {
				password blank: false, validator: RegisterController.passwordValidator
				password2 validator: RegisterController.password2Validator
			}
		}