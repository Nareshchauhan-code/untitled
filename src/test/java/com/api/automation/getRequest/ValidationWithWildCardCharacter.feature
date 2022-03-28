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

   # Validation with wild card character
    #We have to maintain the order of entity

    And match response.[0].experience[*] == ["Google","Apple","Mobile Iron"]
    And match response.[0].project[0].technology[*] == ["Kotlin","SQL Lite","Gradle"]

    # Validation with contains keyword

    And match response.[0].experience[*] contains ["Google","Apple"]
    And match response.[0].project[0].technology[*] contains ["Gradle"]
    And match response.[*].jobId contains 1







