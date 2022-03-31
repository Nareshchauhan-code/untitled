Feature: Create Job Description with DataDriven

  Scenario Outline: Create Job Description with DataDriven <method>
    Given print '<url>'
    And  print '<path>'
    When  print '<method>'
    Then  print '<status>'

    Examples:
      | url                   | path                  | method | status |
      | http://localhost:9897 | /normal/webapi/all    | get    | 200    |
      | http://localhost:9897 | /normal/webapi/add    | post   | 201    |
      | http://localhost:9897 | /normal/webapi/add    | put    | 201    |
      | http://localhost:9897 | /normal/webapi/add    | patch  | 201    |
      | http://localhost:9897 | /normal/webapi/delete | delete | 200    |

  Scenario Outline: Data Driven for the job description entry - <jobId>
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    And request {  "jobId": '#(jobId)',"jobTitle": '#(jobTitle)', "jobDescription": '#(jobDescription)', "experience": [ "Google", "Apple", "Mobile Iron", "Google" ], "project": [ { "projectName": "Movie App", "technology": [ "Kotlin", "SQL Lite","Gradle", "Jenkins" ] } ]}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status <status>

    Examples:
      | jobId | jobTitle          | jobDescription                 | status |
      | 9980  | Software Engg - 2 | To develop andriod application | 201    |
      | id    | Software Engg - 2 | To develop andriod application | 400    |
      | false | Software Engg - 2 | To develop andriod application | 400    |

