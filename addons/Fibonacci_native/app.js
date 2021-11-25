const fib = require('bindings')('fib')

for(let i = 0; i<10;i++){
    console.log(fib.get());
    console.log("---");
}

