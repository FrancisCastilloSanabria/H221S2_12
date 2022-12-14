
const express = require('express');
const app = express();

//recursos
app.use(express.static(__dirname+'/'));

//Enrutamiento
app.get('/',(req,res) => {
    res.sendFile("/home/ubuntu/H221S2_12/landing/login.js")
});

app.listen(3000);
console.log('server on port 3000');