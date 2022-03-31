Feature: To create job description in the test application

  Background: Read the data for data driven
    * def testdata = read("testData.csv")

  Scenario Outline: Data Driven for the job description entry using csv files - <jobId>
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    And request {  "jobId": '#(jobId)',"jobTitle": '#(jobTitle)', "jobDescription": '#(jobDescription)', "experience": [ "Google", "Apple", "Mobile Iron", "Google" ], "project": [ { "projectName": "Movie App", "technology": [ "Kotlin", "SQL Lite","Gradle", "Jenkins" ] } ]}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status <status>

    Examples:
      | testdata |
  # Other Way We can pass the name directly in Examples
    # | read("testData.csv") |
