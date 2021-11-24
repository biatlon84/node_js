const express = require('express');
const path = require('path')
const expan = require('bindings')('fib')
const app = express();

app.use(express.static('./public'));
app.set('view engine', 'ejs');

app.get('/',function(req,res){
    let an = expan.get().split("\n");
    res.render(path.join(__dirname , '/views/index.ejs'), {num:an[0],fibnn:an[1]});
    });

app.listen('3000',function(){
    console.log("Server started!");
});