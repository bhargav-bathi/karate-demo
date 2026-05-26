@debug
Feature: Third Party Schema Validation

Background:
* url baseUrl
* header x-api-key = apiKey


Scenario: Validate JSON Schema

Given path 'api/users/2'

When method GET

Then status 200


* string expectedSchema = read('classpath:examples/schema/userSchema.json')

* string actual = response

* def SchemaUtil = Java.type('examples.utils.JsonSchemaUtil')

* assert SchemaUtil.isValid(actual, expectedSchema)