<!-- commandes: -->

<!-- docker build -t <name of image> <path of your dockerfile>  -->

<!-- doker build -->
	commande meaning a build an image; 

<!-- “-t“ -->
	meaning the name that you want give to the image;

	and the last are the path of the dockerfile;


<!-- “docker run -p <port> -t <name of image>“ -->


“docker run“ for run a image and create a container ;


<!-- “docker rm <id of container>“ -->


<!-- “docker rm“ -->
command is a command that remove a container;

for remove multiple containers:

<!-- “docker rm $(docker ps -a -q)“ -->


	“docker rm” you know it;

	“docker ps“ is a commande thats can it show you a containers thats runing;

	“docker ps -a“ is a commade thats can it show you all containers (run containres and stops containers)

	“docker ps -a“ -q is comande thats show you id of all containers

	“docker rmi”


<!-- SSL ? -->

secure  Socket layer , or ssl  , was the old  standar security technoligy for creating an enception  network links between client and server  and now we have tls taransport layer security
<!-- TLS ? -->
when you read above that you can know that TLS its just new protocol of security data between client and server


<!-- What is HTTP? -->

the hypertext protocol is the fondation of the World Wide Web, and is used to load webpages ,A typical flow over HTTP involves a client machine making a request to a server, which then sends a response message.
<!-- What is in an HTTP request? -->

it's the way internet communications platformes such  web browser asking for information that's needed for load website
any http request made across the internet carries with series of encoded data that carries different type of information
<!-- What is an HTTP method?  or HTTP verbs-->

HTTP defines a set of request methods to indicate the desired action to be performed for a given resource
<!-- verbs : -->
	<Get : sould just retrieve data> 
	<Post :	sould just change in state or side effect on the server>
<!-- What are HTTP request headers?     -->

HTTP headers  contain text information stored in key-valeu pairs, its include in every HTTP request such as what browser of client is using and what data being requested 
<!-- What is in an HTTP request body?  -->
	post
	its like what the user insert in him clinet-agent like username and password for geting him information or somthing like that. you get it?

<!-- What is in an HTTP response?  -->
	An HTTP response is what web clients (often browsers) receive from an Internet server in answer to an HTTP request. These responses communicate valuable information based on what was asked for in the HTTP request.
	A typical HTTP response contains:

		an HTTP status code

		HTTP response headers

		optional HTTP body

		Let's break these down:
<!-- What’s an HTTP status code? -->
	HTTP status codes are 3-digit codes most often used to indicate whether an HTTP request has been successfully completed. Status codes are broken into the following 5 blocks:
		1xx Informational
		2xx Success
		3xx Redirection
		4xx Client Error
		5xx Server Error
		The “xx” refers to different numbers between 00 and 99.

		Status codes starting with the number ‘2’ indicate a success. For example, after a client requests a webpage, the most commonly seen responses have a status code of ‘200 OK’, indicating that the request was properly completed.

<!-- What are HTTP request headers? -->
	Much like an HTTP request, an HTTP response comes with headers that convey important information such as the language and format of the data being sent in the response body

<!-- What is in an HTTP request body? -->
	get
	Successful HTTP responses to ‘GET’ requests generally have a body which contains the requested information. In most web requests, this is HTML data that a web browser will translate into a webpage.