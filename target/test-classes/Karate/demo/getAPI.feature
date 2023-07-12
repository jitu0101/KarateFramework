Feature: API test
  Scenario: get User Details
    Given url baseUrl+'/public/v2/users'
    And path '3582327'
    When method Get
    Then status 200
    * print 'Response of the API is->'+response
    * def jsonResponse = response
    * def actName = jsonResponse.data.name
    * def actId = jsonResponse.data.id
    * def actEmail = jsonResponse.data.email
    * print 'Account Name, Account id and Account Email are->'+actName,actId,actEmail

    * match actName == 'Bhishma Kakkar'

   Scenario: Get User detail- User not found
     Given url baseUrl+'/public/v1/users'
     And path '1000011'
     When method get
     Then status 404
