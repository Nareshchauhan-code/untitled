Feature: To test the end pont of the Application
  Background:
    Given url 'http://localhost:9897'
    And print 'Done'

  Scenario: To get all data from the Application in xml format
    #BasePath
    #Given url 'http://localhost:9897'
    #ContextPath
    And path '/normal/webapi/all'
    #Header
    And header Accept = 'application/xml'
    #Send the Get Request
    When method get
    #Validation of Status code
    Then status 200
    # Print the Response
    And print response

    # Validation  with X path

    And match response/List/item/jobId == '#notnull'
    And match response/List/item/jobTitle == '#string'
    And match response/List/item/experience/experience[1] == '#ignore'
    And match response/List/item/project/project/projectName == '#present'
    And match response/List/item/project/project/technology/technology[2] == '#ignore'
    And match response/List//technology/technology[3] == 'Gradle'

    # Traverse XML similar to Json
    And match response.List.item.experience.experience[0] == 'Google'


