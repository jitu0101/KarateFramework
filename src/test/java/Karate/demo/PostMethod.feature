Feature: Create user with Post method

  Background:
    * url 'https://gorest.co.in/'
    * def requestPayLoad =
    """
    {
      "name":"Kuptaq11",
      "email":"guaa71_j211j@bednar.info",
      "gender":"male",
      "status":"active"
    }
    """
Scenario: Create a user with the given data
  Given path '/public/v2/users'
  And request requestPayLoad
  And header Authorization = 'Bearer ' +tokenID
  When method post
  Then status 201
  And match $.data.id == '#present'
  And match $.data.name == '#present'

  * print $.data.id

  