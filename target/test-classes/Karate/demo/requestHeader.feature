Feature: Get API header feature
  Scenario: pass the user request with headers

    * def query = {status: 'active', gender: 'female'}
    Given url baseUrl+'/public/v1/users'
    And params query
    When method Get
    Then status 200
