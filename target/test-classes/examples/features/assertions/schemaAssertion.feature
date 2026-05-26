Feature: Schema Assertions

Background:
* url baseUrl
* header x-api-key = apiKey

Scenario: Validate Response Schema

Given path 'api/users/2'

When method GET

Then status 200

And match response contains
"""
{
 data:
 {
   id:'#number',
   email:'#string',
   first_name:'#string',
   last_name:'#string',
   avatar:'#string'
 },

 support:
 {
   url:'#string',
   text:'#string'
 }
}
"""