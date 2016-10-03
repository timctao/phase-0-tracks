# 9.1 How the Web Works

## What are some common HTTP status codes?

### Error codes

* 400 and 500 codes are considered error codes
* 400 is a an error on the client side, 500 is an error on the server side
* For example, 404 is a common client side error code that involves trying to connect to a server that doesn't exist
* Whereas 502 something might have gone wrong on the server and it cannot send the information to render on the client side

### Success codes

* 200 codes are considered success codes
* This occurs when everything goes right, and all information sent is received and processed appropriately

### Redirect codes

* Codes in the 300s are redirect codes
* Some action is required before the server redirects the client to the appropriate place based on the response given

## What is the difference between a GET request and a POST request? When might each be used?

Get and post requests differ in several ways. For example:

* A get request can be cached, while a post request cannot.
	* For example, typing in a url is a get request
	* That data can be saved onto a local machine so you don't have to type it all out again
	* Post, meanwhile, cannot be cached
	* An example would be submitting a web form. Once data is filled, it is not stored or saved on the client side

* There are restrictions on the data length in a get request, whereas a post request does not have data restrictions
	* URL length and character type is restricted in a get request, whereas post request has no such restrictions

* Get requests should only be used to retrieve data, not send data. That is because get requests are visible in the URL

## Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An internet cookie is just a text file that stores strings of information on the client side. When visiting a site that has a cookie stored on the client side, it can take that information and customize the page to the user.