Feature: Update user with put method

  Background:
    * url 'https://gorest.co.in/'
    * def requestPayLoad =
    """
    {

      "status":"inactive",
      "email": "jj_gupta1@gmail.com"
    }
    """
  Scenario: Update a user with the given data
    Given path '/public/v2/users/3582337'
    And request requestPayLoad
    And header Authorization = 'Bearer ' +tokenID
    When method put
    Then status 200
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.name == 'Shashikala Bandopadhyay'

