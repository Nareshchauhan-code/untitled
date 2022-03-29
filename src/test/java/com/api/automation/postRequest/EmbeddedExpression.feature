Feature:  create job entry on portal
  Background: Create and initialize the base url
    Given url 'http://localhost:9897'

  Scenario: To create the job entry in Json Format with Embedded Expression
    Given path '/normal/webapi/add'
    * def getjobid = function() { return Math.floor((100)* Math.random());}
    And request { "jobId" :'#(getjobid())',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers { Accept : "application/json", Content-Type : "application/json" }
    When method post
    Then status 201
    And print response
    And match response.jobTitle == "Software Engg"


  Scenario: To create the job entry in XML Format with Embedded Expression
    Given path '/normal/webapi/add'
    * def getjobid = function() { return Math.floor((100)* Math.random());}
    * def jobid = getjobid()
    And request <item> <jobId>#(jobid)</jobId> <jobTitle>Software Engg</jobTitle> <jobDescription>To develop andriod application</jobDescription> <experience>Google</experience> <experience>Apple</experience> <experience>Mobile Iron</experience> <project> <projectName>Movie App</projectName> <technology>Kotlin</technology> <technology>SQL Lite</technology> <technology>Gradle</technology> </project> </item>
    And headers { Accept : "application/json", Content-Type : "application/xml" }
    When method post
    Then status 201
    And print response
