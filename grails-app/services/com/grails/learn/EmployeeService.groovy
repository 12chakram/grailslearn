package com.grails.learn


import com.grails.learn.Employee
import com.sun.org.apache.bcel.internal.generic.RETURN;

class EmployeeService {

    def getAllEmployees() {
		Employee.list()
    }
	
	def save(Employee employeeInstance){
		Employee.saveAll(employeeInstance)
	}
	
	def ajaxFindEmpIDByEmpID(){
		if(Employee.findBy){
		   return true
		}else{
		  return false
		}
	}
}
