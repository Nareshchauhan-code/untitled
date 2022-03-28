Feature: To test the end pont of the Application
  Background:
    Given url 'http://localhost:9897'
    And print 'Done'
  Scenario: To get all data from the Application in Json format
    #BasePath+ContextPath
    Given path '/normal/webapi/all'
    #Send the Get Request
    When method get
    #Validation of Status code
    Then status 200
    # Print the Response
    And print response
    # Validation
    And match response.[0].jobId == '#present'
    And match response.[0].experience[1] == '#notnull'
    And match response.[0].project[0].projectName == '#ignore'
    And match response.[0].project[0].technology == '#array'
    And match response.[0].jobTitle == '#string'
    And match response.[0].jobId == '#number'






