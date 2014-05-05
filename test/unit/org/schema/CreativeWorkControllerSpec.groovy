package org.schema



import grails.test.mixin.*
import spock.lang.*

@TestFor(CreativeWorkController)
@Mock(CreativeWork)
class CreativeWorkControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.creativeWorkInstanceList
            model.creativeWorkInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.creativeWorkInstance!= null
    }

}
