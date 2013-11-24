package com.grails.learn

class HelloController {

    def index() { 
		
		render "Hello World!" +  "\t" + new java.util.Date()
		
	}
}
