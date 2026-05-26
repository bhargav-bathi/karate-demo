Feature: Advanced Assertions

Background:
* url baseUrl
* header x-api-key = apiKey

Scenario: Advanced Validation

    
Given path 'api/users/2'

When method GET

Then status 200

* assert response.data.id > 0

And match response.data.email == '#regex .*@.*'

And match response.data.first_name != null

And match response.data.avatar contains 'jpg'