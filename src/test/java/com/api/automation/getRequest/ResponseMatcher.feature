Feature: To Test the API

  Background: To set the url
    Given url 'http://localhost:9897'

  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response


  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response


