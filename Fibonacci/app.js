const express = require('express');
const path = require('path')
const expan = require('bindings')('fib')
const app = express();

app.use(express.static('./public'));
app.set('view engine', 'ejs');

app.get('/',function(req,res){
    res.render(path.join(__dirname , '/views/index.ejs'), {fibnn:expan.fibon()});
    });

app.listen('3000',function(){
    console.log("server started!");
});