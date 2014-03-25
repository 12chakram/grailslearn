/* Copyright 2009-2013 SpringSource.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package grails.plugin.springsecurity.ui

import grails.plugin.springsecurity.SpringSecurityUtils

import org.springframework.security.core.context.SecurityContextHolder

import grails.plugin.springsecurity.annotation.Secured;

/**
 * @author <a href='mailto:burt@burtbeckwith.com'>Burt Beckwith</a>
 */
class SecurityInfoController {

	def accessDecisionManager
	def authenticationManager
	def channelProcessingFilter
	def logoutFilter
	def logoutHandlers
	def objectDefinitionSource
	def springSecurityFilterChain
	def userCache

	def index() {}

	@Secured(['ROLE_EE_USER'])
	def config() {
		[conf: new TreeMap(SpringSecurityUtils.securityConfig.flatten())]
	}

	@Secured(['ROLE_EE_USER'])
	def mappings() {
		// List<InterceptedUrl>
		[configAttributes: objectDefinitionSource.configAttributeMap,
		 securityConfigType: SpringSecurityUtils.securityConfig.securityConfigType]
	}

	@Secured(['ROLE_EE_USER'])
	def currentAuth() {
		[auth: SecurityContextHolder.context.authentication]
	}

	@Secured(['ROLE_EE_USER'])
	def usercache() {
		[cache: SpringSecurityUtils.securityConfig.cacheUsers ? userCache.cache : false]
	}

	@Secured(['ROLE_EE_USER'])
	def filterChain() {
		[filterChainMap: springSecurityFilterChain.filterChainMap]
	}

	@Secured(['ROLE_EE_USER'])
	def logoutHandler() {
		render view: 'logoutHandlers', model: [handlers: logoutHandlers]
	}

	@Secured(['ROLE_EE_USER'])
	def voters() {
		[voters: accessDecisionManager.decisionVoters]
	}

	@Secured(['ROLE_EE_USER'])
	def providers() {
		[providers: authenticationManager.providers]
	}
/*
	def secureChannel() {
		def securityMetadataSource = channelProcessingFilter?.securityMetadataSource
		render securityMetadataSource.getClass().name
	}
*/
}
