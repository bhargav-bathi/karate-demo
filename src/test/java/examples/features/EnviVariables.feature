Feature: Environment Variables Demo


Background:

    * url baseUrl

    * header x-api-key = apiKey



@get
Scenario: Get User

    Given path 'api/users/2'

    When method GET

    Then status 200

    And match response.data.id == 2



@create
Scenario: Create User

    Given path 'api/users'

    And request
    """
    {
      "name":"Bhargav",
      "job":"Tester"
    }
    """

    When method POST

    Then status 201