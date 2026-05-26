Feature: Read generated CSV


Background:

* callonce read('classpath:examples/features/assignment/assignment3.feature')


Scenario: Validate CSV

* def csvData = read('file:target/assignment/apiResponse.csv')

* assert csvData != null

* assert csvData.length > 0

* match csvData[0] contains
"""
{
userId:'#notnull',
id:'#notnull',
title:'#string',
body:'#string'
}
"""