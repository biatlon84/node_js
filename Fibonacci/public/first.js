const mem = [0,0,0,0];
var current=0;
refNumBar();
function addA_B(){
    var a =document.getElementById('av').value;
    var b =document.getElementById('bv').value;
    var c = parseFloat(a)+parseFloat(b); 
    queueA(c);

}
function subtract(){
    var a =document.getElementById('av').value;
    var b =document.getElementById('bv').value;
    queueA(parseFloat(a)-parseFloat(b)); 
}

function multiplyA_B(){
    var a =document.getElementById('av').value;
    var b =document.getElementById('bv').value;
    queueA(parseFloat(a)*parseFloat(b)); 
}
function divideA_B(){
    var a =document.getElementById('av').value;
    var b =document.getElementById('bv').value;
    queueA(parseFloat(a)/parseFloat(b)); 
}
function powA_B(){
    var a =document.getElementById('av').value;
    var b =document.getElementById('bv').value;
    queueA(Math.pow(parseFloat(a),parseFloat(b))); 
}

function ref(){
    current =parseFloat(document.getElementById('rough').value);
    current+=parseFloat(document.getElementById('accurat').value/500);
    var powN = parseFloat(document.getElementById('powNum').value);
    document.getElementById('powRan').value=powN;
    current*=Math.pow(10,powN);
    document.getElementById('tess').innerHTML=current;
}
function refNumBar(){
    var powN = parseInt(document.getElementById('powRan').value);
    document.getElementById('powNum').value=powN;
    ref();
}
function queueA(n){
    var exist = true;
    for(var i=0;i<mem.length-1 ;i++){
        if(mem[i]!=n&&n!=0){
            exist=false;
        }
    }
    exist=false;
    if(!exist){
     add(n);  
    }
    document.getElementById('mem0').value=mem[0];
    document.getElementById('mem1').value=mem[1];
    document.getElementById('mem2').value=mem[2];
    document.getElementById('mem3').value=mem[3];
}
function add(na){
    for(var i = mem.length-1; i>=0;i--){
        mem[i+1]=mem[i];       
    }
    mem[0]=na;
}
function pasteAw(n){

    document.getElementById('av').value= mem[n];

}
function pasteBw(n){

    document.getElementById('bv').value= mem[n];

}
function pasteBfS(){
    document.getElementById('bv').value=current;
}
function pasteAfS(){
    document.getElementById('av').value=current;
    
}
function swapA_B(){
    var buf=document.getElementById('bv').value;
    document.getElementById('bv').value=document.getElementById('av').value;
    document.getElementById('av').value=buf;
}
function cosA_B(){
    var a =document.getElementById('av').value;
    var un = document.getElementsByName('un')[1].checked;
    if(un){
        a*= Math.PI / 180;
    }
    queueA(Math.cos(parseFloat(a))); 
}
function sinA_B(){ 
    var a =document.getElementById('av').value;
    var un = document.getElementsByName('un')[1].checked;
    if(un){
        a*= Math.PI / 180;
    }
    queueA(Math.sin(parseFloat(a)));    
}
function asinA_B(){ 
    var a =document.getElementById('av').value;
    var un = document.getElementsByName('un')[1].checked;
    a=Math.asin(parseFloat(a));
    if(un){
        a/= Math.PI / 180;
    }
    queueA(a);    
}
function acosA_B(){ 
    var a =document.getElementById('av').value;
    var un = document.getElementsByName('un')[1].checked;
    a=Math.acos(parseFloat(a));
    if(un){
        a/= Math.PI / 180;
    }
    queueA(a);    
}
function logA_B(){ 
    var a =document.getElementById('av').value; 
    var b =document.getElementById('bv').value; 
    a=Math.log(a)/Math.log(b);
    queueA(a);    
}