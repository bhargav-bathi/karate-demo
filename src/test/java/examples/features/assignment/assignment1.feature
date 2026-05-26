Feature: Read API response and store data into JSON and CSV files using Java

Background:
* url 'https://jsonplaceholder.typicode.com'

Scenario: Fetch posts and generate output files

Given path 'posts'
When method GET
Then status 200

* def FileUtils = Java.type('examples.utils.FileUtils')

* def jsonText = karate.pretty(response)

* eval FileUtils.writeJson('src/test/output/posts.json',jsonText)

* eval FileUtils.writeCsv('src/test/output/posts.csv',response)