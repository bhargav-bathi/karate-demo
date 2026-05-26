Feature: Person

Background:

* def login = callonce read('classpath:examples/features/callandcallonce/login.feature')

* def token = login.authToken


Scenario:

Given url baseUrl

And header x-api-key = apiKey

And path 'api/users/2'

When method GET

Then status 200

* print token