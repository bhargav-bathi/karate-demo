Feature: Learn Karate Core Keywords

Background:
    * url 'https://jsonplaceholder.typicode.com'


Scenario: Demonstrate url

    Given path 'users/2'

    When method GET

    Then status 200

    And match response.id == 2


Scenario: Create a person

    Given path 'posts'

    And request
    """
    {
      "title": "Karate",
      "body": "API Testing",
      "userId": 1
    }
    """

    When method POST

    Then status 201

    And match response.title == 'Karate'

    * print response


Scenario: Demonstrate params keyword

    Given path 'posts'

    And param userId = 2

    When method GET

    Then status 200


Scenario: Demonstrate headers

    Given path 'users/2'

    And header Accept = 'application/json'

    When method GET

    Then status 200


Scenario: Demonstrate variables

    * def userId = 3

    Given path 'users', userId

    When method GET

    Then status 200

    And match response.id == userId


Scenario: Demonstrate multiple validations

    Given path 'users/2'

    When method GET

    Then status 200

    And match response.name contains 'Ervin'

    And match response.email contains '@'

    And match response.id == 2

   