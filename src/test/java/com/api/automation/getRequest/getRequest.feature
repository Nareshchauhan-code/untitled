Feature: Get request
  Scenario: Get Request Demo 1
    Given url 'http://localhost:9897/normal/webapi/all'
    When method get
    Then status 200
    And print response