Feature: API test with query parameter
  Scenario: get User Details with query parameter filter

    * def query = {status: 'active', gender: 'female'}
    Given url baseUrl+'/public/v1/users'
    And params query
    When method Get
    Then status 200
    * print response
    * def jsonresponse = response
    * print jsonresponse.data[0].name
    * print jsonresponse.data.length
