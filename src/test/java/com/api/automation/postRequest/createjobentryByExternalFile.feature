Feature:  create job entry on portal
  Background: Create and initialize the base url
    Given url 'http://localhost:9897'

    Scenario: To create the job entry in Json Format
      Given path '/normal/webapi/add'
      * def body = read("data/jobentry.json")
      And request body
      And headers { Accept : "application/json", Content-Type : "application/json" }
      When method post
      Then status 201
      And print response
      And match response.jobTitle == "Software Engg"


  Scenario: To create the job entry in xml Format
    Given path '/normal/webapi/add'
    * def body = read("data/jobentry.xml")
    And request body
    And headers { Accept : "application/xml", Content-Type : "application/xml" }
    When method post
   # Then status 201
    And print response
    And match response/item/jobTitle == "#notpresent"