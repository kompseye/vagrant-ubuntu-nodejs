var http = require("http");

http.createServer(function (req, res) {
 console.log('request received');
 // send heaader, status, and mime type
 // res.writeHead(200, {'Content-Type': 'text/html'});
 // Send the response
 res.end('Hello, Node. You requested: ' + req.url);
}).listen(3000); // here we closed the anonymous function, then close createServer

// the callback will not be called until HTTP request comes in
// the callback doesnt block: when a request comes in, it handles, meanwhile server is just listening

// log the server is running
console.log('Server running http://127.0.0.1:3000/');


