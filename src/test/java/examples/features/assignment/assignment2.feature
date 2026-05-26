Feature: Call different scenarios based on response id condition

Background:
* url 'https://jsonplaceholder.typicode.com'

Scenario: Execute scenarios based on id value

Given path 'posts'
When method GET
Then status 200


# Loop through response
* def posts = response


    * def execute =
    """
        function(data){

        for(var i=0;i<data.length;i++){

            var currentId = data[i].id

            if(currentId % 2 == 0){

                karate.call(
                'classpath:examples/features/assignment/scenario1.feature',
                {
                    inputId: currentId
                }
                )

            }
        else{

        karate.call(
            'classpath:examples/features/assignment/scenario2.feature',
        {
        inputId: currentId
        }
        )

        }

        }

        }
    """


* eval execute(posts)