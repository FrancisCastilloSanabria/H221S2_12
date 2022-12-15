const http= require('http');
const express = require('express');
const app = express();

//recursos
app.use(express.static(__dirname+'/'));

//Enrutamiento
app.get('/',(req,res) => {
    res.sendFile("/home/ubuntu/projects/landing/menu.html")
});

app.listen(3000);
console.log('server on port 3000');