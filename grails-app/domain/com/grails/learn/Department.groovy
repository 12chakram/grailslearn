package com.grails.learn

import com.sun.istack.internal.Nullable;


class Department {
   
	Long id
	String departmentName;
	String location
	
	
	static mapping ={
		
		table "DEPARTMENT"
		departmentName column:"DEPTNAME"
		location column:"LOCATION"
		version false
	}
	
    static constraints = {
		departmentName (nullable:false, blank:false)
		location (nullable:false, blank:false)
    }
}