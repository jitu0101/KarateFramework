Feature: Verify user details

  Background:
    * url 'https://reqres.in/api/users'
    * def feature = read('user1.feature')
    * def result = call feature

  Scenario: Verify user3 details
    * def expectedResult = read('classpath:'+'com/expectedResult/user3Result.json')
    Given path '3'
    When method get
    Then  status 200
    Then print response
    Then match response == expectedResult
    Then print 'Result is:',result
    * def first_name = result.expectedResult[0].data.first_name
    Then print 'First Name is:',first_name

