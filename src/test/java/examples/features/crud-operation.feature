Feature: CRUD Operation using Karate

Background:

    * url 'https://jsonplaceholder.typicode.com'



Scenario: Create a resource

    Given path 'posts'

    And request
    """
    {
      "title": "Karate API",
      "body": "Learning CRUD",
      "userId": 1
    }
    """

    When method POST

    Then status 201

    And match response.title == 'Karate API'

    * def postId = response.id

    * print 'Created ID = ', postId


Scenario: Read a resource

    Given path 'posts/1'

    When method GET

    Then status 200

    And match response.id == 1


Scenario: Update a resource

    Given path 'posts/1'

    And request
    """
    {
      "id": 1,
      "title": "Updated Karate",
      "body": "Updated Content",
      "userId": 1
    }
    """

    When method PUT

    Then status 200

    And match response.title == 'Updated Karate'

    * print response


Scenario: Delete a resource

    Given path 'posts/1'

    When method DELETE

    Then status 200

    * print 'Resource Deleted Successfully'