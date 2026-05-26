Feature: File Upload

Scenario: Upload text file

Given url 'https://filebin.net'

* def bin = 'karate-demo-upload'

And path bin, 'demo.txt'

* def uploadFile =
"""
{
 read: 'classpath:examples/resources/demo.txt',
 filename: 'demo.txt',
 contentType: 'text/plain'
}
"""

And multipart file file = uploadFile

When method POST

Then status 201



Scenario: Upload image

Given url 'https://filebin.net'

* def bin = 'karate-demo-upload'

And path bin, 'karateExample.jpg'

* def imageFile =
"""
{
 read: 'classpath:examples/resources/karateExample.jpg',
 filename: 'karateExample.jpg',
 contentType: 'image/jpeg'
}
"""

And multipart file file = imageFile

When method POST

Then status 201