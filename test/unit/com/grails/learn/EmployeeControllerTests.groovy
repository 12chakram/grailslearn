package com.grails.learn

import grails.test.ControllerUnitTestCase

import javax.management.relation.Role
import javax.servlet.http.HttpServletResponse

import org.codehaus.groovy.grails.plugins.MockGrailsPluginManager;
import org.codehaus.groovy.grails.web.servlet.FlashScope;

import com.grails.learn.EmployeeController;
import com.grails.learn.User
import com.grails.learn.UserService

/**
 * Unit tests for {@link UserController.groovy}
 */


class EmployeeControllerTests extends ControllerUnitTestCase {
    def employeeService
	EmployeeController controller
	List<Employee> employeeList = []
	
	

/*    @Override
    protected void setUp() {
        super.setUp()
        controller.session.user = new User()(
                username: 'administrator',
                fullName: 'Unit',
				email : 'kumarvayyala@outlook.com',
				roles : 'admin')
        mockUserService = mockFor(UserService)
    }
	*/
	    @Override
		protected void setUp() {
			super.setUp()
			controller = new EmployeeController()
			mockController(EmployeeController)
			mockDomain(Employee, employeeList)
			mockDomain(Department)
		}
		
		void testIndexwhenNoUserInSession(){
			controller.index()
			assertEquals "index", controller.redirectArgs['action']
		}
		
		void testIndexwhenUserInSession(){
			def userName = 'kumar vayyala'
		    controller.session.setAttribute("user", userName);
			controller.employeeService = new EmployeeService()
			controller.index()
			assertEquals "list", controller.redirectArgs['action']
		}
		
		void testSaveEmployee(){
			// below code is not working
			/*controller.params.put(empid, 1158)
			controller.params.put(first_Name, 'Kumar Vayyala');
			controller.params.put(last_Name, 'vayyala')*/
			
			
			// Mock the domain class, this time providing a list of test
			// Item instances that can be searched.
			
			def department = new Department( id:5,departmentName:'JAVA',location:'HYD' ).save()
			
			controller.params.empid = '1154'
			controller.params.first_Name = 'Kumar'
			controller.params.last_Name = 'Vayyala'
			controller.params.bossid = '1156'
			controller.params.jobid = '55'
			controller.params.joingDate = new Date()
			controller.params.deptid = department.id
			controller.params.expyear = '6'
			controller.params.expmonth = '2'
			
			/*controller.flash.putAll(new LinkedHashMap<Object, Object>())*/
			controller.request.method = "POST" 
			
			//controller.metaClass.message = { Map map}
			
		/*groovy.lang.MissingMethodException: No signature of method: com.grails.learn.EmployeeController.message() is applicable for argument types: (java.util.LinkedHashMap) values: [[code:employee.label, default:Employee]]
		 Possible solutions: save(), isCase(java.lang.Object)
		 at com.grails.learn.EmployeeController.save(EmployeeController.groovy:61)
		 at com.grails.learn.EmployeeControllerTests.testSaveEmployee(EmployeeControllerTests.groovy:87)*/
			
			controller.metaClass.message = { Map map} // solution for above error
			
			controller.save()
			assertEquals "show", controller.redirectArgs['action']
		}
	
}