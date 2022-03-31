Feature: Upload file with Karate Framework
  Background:
    Given url 'http://localhost:9897'

    Scenario: To upload the file
      Given path '/normal/webapi/upload'
      And multipart file file = {read :'file.txt', filename :'file.txt', Content-Type :'multipart/form-data'}
      When method post
      Then print response