Feature: Execute JavaScript and create array using userId values

Background:
    * url 'https://jsonplaceholder.typicode.com'

Scenario: Extract userId values into array

Given path 'posts'
When method GET
Then status 200

* def posts = response

# JavaScript
* def createArray =
"""
function(data){

    var userIds = []

    for(var i=0;i<data.length;i++){

        userIds.push(
            data[i].userId
        )

    }

    return userIds

}
"""

* def userIdArray = createArray(posts)

* print userIdArray