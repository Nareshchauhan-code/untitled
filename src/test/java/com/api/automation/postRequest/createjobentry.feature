Feature:  create job entry on portal
  Background: Create and initialize the base url
    Given url 'http://localhost:9897'

    Scenario: To create the job entry in Json Format
      Given path '/normal/webapi/add'
      And request {"jobId":5,"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
      And headers { Accept : "application/json", Content-Type : "application/json" }
      When method post
      Then status 201
      And print response
      And match response.jobTitle == "Software Engg"