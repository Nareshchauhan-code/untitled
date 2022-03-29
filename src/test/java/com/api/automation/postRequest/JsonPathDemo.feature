Feature: To validate the response with json path
  Scenario: Validate the response with Json Path
    Given url 'http://localhost:9897/normal/webapi/all'
    When method get
    Then status 200
    And print response
    # Karate Json Path
  # karate.jsonPath(doc,jsonPath Expression)
   * def jobTitle = karate.jsonPath(response,"$[?(@.jobId ==1)].jobTitle")
    * def jobDescription = karate.jsonPath(response,"$[?(@.jobId ==1)].jobDescription")
    * def experience = karate.jsonPath(response, "$[?(@.jobId ==1)].experience")

    * print "jobTitle : " , jobTitle
    * print "jobDescription : ", jobDescription
    * print "experience : " , experience

