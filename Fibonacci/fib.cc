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
    std::string f = std::to_string(fib());
    std::string cou = std::to_string(++count); 
    return Napi::String::New(env,"Index - "+cou+"\n"+"Value - " + f);
}

Napi::Object init(Napi::Env env, Napi::Object exports) {
    exports.Set(Napi::String::New(env, "get"), Napi::Function::New(env, fibonacci));
    return exports;
};
NODE_API_MODULE(hello_world, init);
