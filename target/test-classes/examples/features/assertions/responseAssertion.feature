Feature: Response Assertions

Background:
* url baseUrl
* header x-api-key = apiKey

Scenario: Validate Response Fields

Given path 'api/users/2'

When method GET

Then status 200

And match response.data.id == 2

And match response.data.email == '#string'

And match response.data.first_name contains 'Jan'

And match response.data.avatar contains 'https'