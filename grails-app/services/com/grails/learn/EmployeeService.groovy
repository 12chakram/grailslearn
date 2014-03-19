package com.grails.learn


import org.springframework.web.multipart.MultipartFile;

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
	
/*	def String uploadFile(MultipartFile file, String name, String destinationDirectory){

		def servletContext = ServletContextHolder.servletContext
		def storagePath = servletContext.getRealPath(destinationDirectory)
		// create storage path directory if it does not exist

		def storagePathDirectory = new File(storagePath )

		if(!storagePathDirectory .exists()){
			println ("CREATING DIRECTORY ${}")
		}
		if(storagePathDirectory.mkdirs()){
			println 'sucess'
		}else{
			println 'faild'
		}
		// store file

		if(!file.isEmpty()){
			file.transferTo(new File("${storagePath}/${name}"))
			return "${storagePath}/${name}"
		}else{
			println "File ${file.inspect} was empty!"
			return null
		}
	}*/
}
