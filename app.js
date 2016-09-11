var express = require('express');

// Constants
var DEFAULT_PORT = 8080;
var PORT = process.env.PORT || DEFAULT_PORT;

// App
var app = express();
app.get('/', function(req, res){
    res.send('Hello World!');
});

// Service
app.listen(PORT, function () {
    console.log('Running on port: ' + PORT);
});
