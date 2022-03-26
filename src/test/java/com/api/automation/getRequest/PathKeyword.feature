Feature: To test the end pont of the Application
  Background:
    Given url 'http://localhost:9897'
    And print 'Done'
  Scenario: To get all data from the Application in Json format
    #BasePath+ContextPath
    #Given url 'http://localhost:9897/normal/webapi/all'
    Given path '/normal/webapi/all'
    #Send the Get Request
    When method get
    #Validation of Status code
    Then status 200
    # Print the Response
    And print response


  Scenario: To get all data from the Application in Json format with Path variable
    #BasePath
    #Given url 'http://localhost:9897'
    #ContextPath
    And path '/normal/webapi/all'
    #Send the Get Request
    When method get
    #Validation of Status code
    Then status 200
    # Print the Response
    And print response