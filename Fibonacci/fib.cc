#include <napi.h>
#include <string> 

int x = 1;
int previous = 0;
int count = 0;

int fib(){
int temp = x;
x+=previous;
return previous=temp;
}

Napi::String fibonacci(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();       
    std::string s = std::to_string(fib());
    std::string s2 = std::to_string(++count); 
    return Napi::String::New(env, s2+" - " + s);
}
Napi::Object init(Napi::Env env, Napi::Object exports) {
    exports.Set(Napi::String::New(env, "fibon"), Napi::Function::New(env, fibonacci));
    return exports;
};
NODE_API_MODULE(hello_world, init);
