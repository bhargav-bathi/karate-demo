Feature: Create CSV File

Background:

* url 'https://jsonplaceholder.typicode.com'

* def jsonToCsv =
"""
function(data){

    var csv =
    'userId,id,title,body\n'

    for(var i=0;i<data.length;i++){

        csv +=
        data[i].userId + ',' +
        data[i].id + ',' +
        '"' + data[i].title + '",' +
        '"' + data[i].body + '"\n'

    }

    return csv

}
"""


Scenario: Generate CSV

Given path 'posts'

When method GET

Then status 200


* def csvContent = jsonToCsv(response)

* karate.write(csvContent,'assignment/apiResponse.csv')