var http = require('http');
//import { walk_dir } from './mgr.js';
//const { fs } = require('fs');

http.createServer(function (req, res) {
    res.writeHead(200, { 'Content-type': 'text/html'});
    res.end("Hello"); 
}).listen(8080);
