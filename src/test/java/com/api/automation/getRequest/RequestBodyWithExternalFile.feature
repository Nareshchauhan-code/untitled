Feature: To Test the API

  Background: To set the url
    Given url 'http://localhost:9897'

  Scenario: To get the data form other file  Json format and match the response body
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    #Create variable to store the value of External file
   * def actualResponse = read("../response.json")
    And match actualResponse contains deep {"jobDescription": "To develop andriod application"}
    And match actualResponse contains deep {"project":[{"projectName": "Movie App"}]}
    And print actualResponse

# Read xml Data from External file
  Scenario: To get the data in xml format and match the response body
    Given path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200

    # Create the variable to store the xml data
  * def actualResponse = read("../response.xml")
    And print actualResponse
    # Validation
    And match actualResponse/List/item/jobId == '1'
    And match actualResponse/List/item/jobTitle == 'Software Engg'
    And match actualResponse/List/item/experience/experience[1] == 'Google'
    And match actualResponse/List/item/project/project/projectName == 'Movie App'
    And match actualResponse/List/item/project/project/technology/technology[2] == 'SQL Lite'
    And match actualResponse/List//technology/technology[3] == 'Gradle'












