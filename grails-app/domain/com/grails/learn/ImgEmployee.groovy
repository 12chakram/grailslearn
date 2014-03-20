package com.grails.learn

class ImgEmployee {

	byte[] data
	String contentType
	Long empid

	static constraints={
		//maxSize: 200K
	 data(maxSize:204800)
	 contentType(nullable:false)
	 empid(nullable:false)
	}
	
	static mapping ={
		table "IMGEMP"
		empid column:"EMPID"
		data column:"PHOTO"
		contentType column:"contentType"
		version false
	}
}
