Feature: Call Once

Background:

* def login = callonce read('classpath:examples/features/callandcallonce/login.feature')

* def token = login.authToken

* url baseUrl


Scenario: User 1

Given path 'api/users/2'

And header x-api-key = apiKey

When method GET

Then status 200



Scenario: User 2

Given path 'api/users/3'

And header x-api-key = apiKey

When method GET

Then status 200