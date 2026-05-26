Feature: Login

Scenario:

Given url baseUrl

And header x-api-key = apiKey

And path 'api/login'

And request
"""
{
 email:'#(email)',
 password:'#(password)'
}
"""

When method POST

Then status 200

* def authToken = response.token