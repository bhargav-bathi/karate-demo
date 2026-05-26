Feature: Status Assertions

Background:
* url baseUrl
* header x-api-key = apiKey

Scenario: Validate Status and Headers

Given path 'api/users/2'

When method GET

Then status 200

And match header Content-Type contains 'application/json'

And match response != {}