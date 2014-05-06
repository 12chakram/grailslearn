/* Copyright 2009-2013 SpringSource.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package multiplexonline

import java.rmi.activation.ActivationGroupDesc.CommandEnvironment;
import java.util.Date;

import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.authentication.dao.NullSaltSource
import grails.util.GrailsNameUtils
import multiplexonline.InvitationCode

import org.springframework.dao.DataIntegrityViolationException

/**
 * @author <a href='mailto:burt@burtbeckwith.com'>Burt Beckwith</a>
 */
@Secured(['ROLE_ADMIN'])
class UserController extends grails.plugin.springsecurity.ui.UserController {

	def saltSource
	def userCache
	def MOUserService
	def static existingUser
	def invitationCodeInstance
	def springSecurityService
	def static currentUser
	def mailService
	def invitedUsers
	def RegisterController

	def create() {
		def user = lookupUserClass().newInstance(params)
		[user: user, authorityList: sortedRoles()]
	}

	def save() {
		def user = lookupUserClass().newInstance(params)
		if (params.password) {
			String salt = saltSource instanceof NullSaltSource ? null : params.username
			user.password = springSecurityUiService.encodePassword(params.password, salt)
		}
		user.dob =new Date()
		user.fbid = Long.parseLong("0")
		user.gender= 'Notspecify'
		user.mobile = '+91 XXXXXXXXXX'

		if (!user.save(flush: true)) {
			render view: 'create', model: [user: user, authorityList: sortedRoles()]
			return
		}

		addRoles(user)
		flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])}"
		redirect action: 'edit', id: user.id
	}

	def edit() {
		String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName

		def user = params.username ? lookupUserClass().findWhere((usernameFieldName): params.username) : null
		if (!user) user = findById()
		if (!user) return

			return buildUserModel(user)
	}

	def update() {
		String passwordFieldName = SpringSecurityUtils.securityConfig.userLookup.passwordPropertyName

		def user = findById()
		if (!user) return
			if (!versionCheck('user.label', 'User', user, [user: user])) {
				return
			}

		def oldPassword = user."$passwordFieldName"
		user.properties = params
		if (params.password && !params.password.equals(oldPassword)) {
			String salt = saltSource instanceof NullSaltSource ? null : params.username
			user."$passwordFieldName" = springSecurityUiService.encodePassword(params.password, salt)
		}

		if (!user.save(flush: true)) {
			render view: 'edit', model: buildUserModel(user)
			return
		}

		String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName

		lookupUserRoleClass().removeAll user
		addRoles user
		userCache.removeUserFromCache user[usernameFieldName]
		flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])}"
		redirect action: 'edit', id: user.id
	}

	def delete() {
		def user = findById()
		if (!user) return

			String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName
		try {
			lookupUserRoleClass().removeAll user
			user.delete flush: true
			userCache.removeUserFromCache user[usernameFieldName]
			flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
			redirect action: 'search'
		}
		catch (DataIntegrityViolationException e) {
			flash.error = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
			redirect action: 'edit', id: params.id
		}
	}

	/*def search() {
	 redirect(controller: "dashboard", action: "index")
	 }*/

	def showInvite(){
		currentUser = MOUserService.getCurrentUser()
		String currentUserName = currentUser.username
		invitationCodeInstance = new InvitationCode()
		invitedUsers = InvitationCode.findAll(max:9,sort:"dateCreated",order:'desc') {
			username :currentUser.username
	   }
		render(view: "invite", model: [
			invitationCode: invitationCodeInstance,
			invitedUsers : invitedUsers])
	}

	def sendInvitation(){
		invitationCodeInstance = new InvitationCode(params)

		String senderName = params.username
		try{
			currentUser = MOUserService.getCurrentUser()
			invitationCodeInstance.emailFrom = currentUser.email
			invitationCodeInstance.dateCreated = new Date()
			invitationCodeInstance.username = currentUser.username
			invitationCodeInstance.save(flush: true)
			String url = generateLink('index', [t: invitationCodeInstance.token])
			mailService.sendMail {
				multipart true
				to invitationCodeInstance.emailTo
				from currentUser.email
				subject senderName+' Invite you as a '+invitationCodeInstance.role.replace("ROLE", " ").replaceAll("_", " ")+' on LearnGrails'
				//html body.toString()
				//html g.render(template:"mymail",model:[user:currentUser])
				// body(view:"/user/mymail", model:[user:currentUser])
				html g.render( template: '/user/invitationmail',model:[emailTo:invitationCodeInstance.emailTo,url:url])
				inline 'logo', 'image/jpg', new File('./web-app/images/phone-1.png')
				//inline 'phone2', 'image/jpg', new File('./web-app/images/phone-2.png')
			}
		}catch(Exception e){
			println(e)
		}
		if(invitationCodeInstance.id>=1){
			if(invitedUsers == null){
				invitedUsers = InvitationCode.findAll("from InvitationCode as i where i.username = :username",
					[username :currentUser.username],[max:9,sort:'dateCreated',order:'aesc'])
			}else{
				invitedUsers.add(invitationCodeInstance)
			}
			render(view: "invite", model:
			[mailsent:true,
				emailTo:invitationCodeInstance.emailTo,
				invitationCode:new InvitationCode(),
				invitedUsers : invitedUsers]
			)
		}
	}
	
	def allinvitees(){
		
		def allInvitedUsers = InvitationCode.findAll(sort:"dateCreated",order:'desc') {
			username :currentUser.username
	   }
		[allInvitedUsers : allInvitedUsers]
	}

	def userSearch() {

		boolean useOffset = params.containsKey('offset')
		setIfMissing 'max', 10, 100
		setIfMissing 'offset', 0

		def hql = new StringBuilder('FROM ').append(lookupUserClassName()).append(' u WHERE 1=1 ')
		def queryParams = [:]

		def userLookup = SpringSecurityUtils.securityConfig.userLookup
		String usernameFieldName = userLookup.usernamePropertyName

		for (name in [username: usernameFieldName]) {
			if (params[name.key]) {
				hql.append " AND LOWER(u.${name.value}) LIKE :${name.key}"
				queryParams[name.key] = params[name.key].toLowerCase() + '%'
			}
		}

		String enabledPropertyName = userLookup.enabledPropertyName
		String accountExpiredPropertyName = userLookup.accountExpiredPropertyName
		String accountLockedPropertyName = userLookup.accountLockedPropertyName
		String passwordExpiredPropertyName = userLookup.passwordExpiredPropertyName

		for (name in [enabled: enabledPropertyName,
			accountExpired: accountExpiredPropertyName,
			accountLocked: accountLockedPropertyName,
			passwordExpired: passwordExpiredPropertyName]) {
			Integer value = params.int(name.key)
			if (value) {
				hql.append " AND u.${name.value}=:${name.key}"
				queryParams[name.key] = value == 1
			}
		}

		int totalCount = lookupUserClass().executeQuery("SELECT COUNT(DISTINCT u) $hql", queryParams)[0]

		Integer max = params.int('max')
		Integer offset = params.int('offset')

		String orderBy = ''
		if (params.sort) {
			orderBy = " ORDER BY u.$params.sort ${params.order ?: 'ASC'}"
		}

		def results = lookupUserClass().executeQuery(
				"SELECT DISTINCT u $hql $orderBy",
				queryParams, [max: max, offset: offset])
		def model = [results: results, totalCount: totalCount, searched: true]

		// add query params to model for paging
		for (name in [
			'username',
			'enabled',
			'accountExpired',
			'accountLocked',
			'passwordExpired',
			'sort',
			'order'
		]) {
			model[name] = params[name]
		}

		render view: 'search', model: model
	}

	/**
	 * Ajax call used by autocomplete textfield.
	 */
	def ajaxUserSearch() {

		def jsonData = []

		if (params.term?.length() > 2) {
			String username = params.term
			String usernameFieldName = SpringSecurityUtils.securityConfig.userLookup.usernamePropertyName

			setIfMissing 'max', 10, 100

			def results = lookupUserClass().executeQuery(
					"SELECT DISTINCT u.$usernameFieldName " +
					"FROM ${lookupUserClassName()} u " +
					"WHERE LOWER(u.$usernameFieldName) LIKE :name " +
					"ORDER BY u.$usernameFieldName",
					[name: "${username.toLowerCase()}%"],
					[max: params.max])

			for (result in results) {
				jsonData << [value: result]
			}
		}

		render text: jsonData as JSON, contentType: 'text/plain'
	}

	/**
	 * method for to show invitee user profile data
	 */

	def inviteeProfile(){
			println(params.id)
	}

	protected void addRoles(user) {
		String upperAuthorityFieldName = GrailsNameUtils.getClassName(
				SpringSecurityUtils.securityConfig.authority.nameField, null)

		for (String key in params.keySet()) {
			if (key.contains('ROLE') && 'on' == params.get(key)) {
				lookupUserRoleClass().create user, lookupRoleClass()."findBy$upperAuthorityFieldName"(key), true
			}
		}
	}

	protected Map buildUserModel(user) {

		String authorityFieldName = SpringSecurityUtils.securityConfig.authority.nameField
		String authoritiesPropertyName = SpringSecurityUtils.securityConfig.userLookup.authoritiesPropertyName

		List roles = sortedRoles()
		Set userRoleNames = user[authoritiesPropertyName].collect { it[authorityFieldName] }
		def granted = [:]
		def notGranted = [:]
		for (role in roles) {
			String authority = role[authorityFieldName]
			if (userRoleNames.contains(authority)) {
				granted[(role)] = userRoleNames.contains(authority)
			}
			else {
				notGranted[(role)] = userRoleNames.contains(authority)
			}
		}

		return [user: user, roleMap: granted + notGranted]
	}

	protected findById() {
		def user = lookupUserClass().get(params.id)
		if (!user) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
			redirect action: 'search'
		}

		user
	}

	protected List sortedRoles() {
		lookupRoleClass().list().sort { it.authority }
	}

	protected String generateLink(String action, linkParams) {
		createLink(base: "$request.scheme://$request.serverName:$request.serverPort$request.contextPath",
		controller: 'signup', action: action,params: linkParams)
	}

}