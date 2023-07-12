Feature: Verify user details

  Background:
  * url 'https://reqres.in/api/users'
  * def expectedResult = read('classpath:'+'com/expectedResult/userResult.json')

  Scenario: Verify user1 details
    Given path '1'
    When method get
    Then  status 200
    Then print response
    Then match response == expectedResult[0]

  Scenario: Verify user2 details

    Given path '2'
    When method get
    Then  status 200
    Then print response
    Then match response == expectedResult[1]

