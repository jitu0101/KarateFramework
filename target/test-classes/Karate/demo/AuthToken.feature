Feature: Get API token id
  Scenario: Get user details

    * print 'Authorization token id is->'+tokenID
    Given header Authorization = 'Bearer '+ tokenID
    Given url baseUrl+'/public/v1/users'
    And path '3526109'
    When method Get
    Then status 200
