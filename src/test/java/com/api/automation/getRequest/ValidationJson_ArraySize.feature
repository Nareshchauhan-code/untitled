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
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == 'Apple'
    And match response.[0].project[0].technology[2] == 'Gradle'
    And match response.[0].project[0].projectName == 'Movie App'

    # Validating the size of Array
    And match response.[0].experience == '#[3]'
    And match response.[0].project[0].technology == '#[3]'




