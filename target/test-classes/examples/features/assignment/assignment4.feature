Feature: Modify response by removing body key

Background:
    * url 'https://jsonplaceholder.typicode.com'


Scenario: Remove body field and print updated response

    Given path 'posts'
    When method GET
    Then status 200

    * remove response[*].body

    * print response