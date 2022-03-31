Feature: To Test the API

  Background: To set the url
    Given url 'http://localhost:9897'


  Scenario: To get the data in Json format and match the particular value with Deep Keyword
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep {"jobDescription": "To develop andriod application"}
    And match response contains deep {"project":[{"projectName": "Movie App"}]}
    And match header Content-Type == 'application/json'
    And match header Connection == 'keep-alive'



