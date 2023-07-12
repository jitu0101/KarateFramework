Feature: Delete user using delete api

  Background:
    * url 'https://gorest.co.in'

    * def random_string =
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
    * def randomString = random_string(10)
    * print randomString

    * def requestPayload =
	"""
	{
        "name": "tom",
        "gender": "male",
        "status": "active"
    }
	"""
    * set requestPayload.email = randomString + "@gmail.com"

    * print requestPayload

  Scenario: Delete a user with the given data
 # 1st call :Create a user with post call
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    And match $.data.id == '#present'
 #Fetch the user id from the post call response
    * def userId = $.data.id
    * print userId
 #Delete call  -- for same the user

    Given path '/public/v1/users/'+userId
    And header Authorization = 'Bearer ' +tokenID
    When method delete
    Then status 204

  # try to get the same deleted user
    Given url baseUrl+'/public/v1/users/'+userId
    When method Get
    Then status 404
    And match $.data.message == 'Resource not found'

