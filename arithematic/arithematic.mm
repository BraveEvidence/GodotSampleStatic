#import <Foundation/Foundation.h>

#ifdef VERSION_4_0
#include "core/object/class_db.h"
#else
#include "core/class_db.h"
#endif

#include "arithematic.h"
#import "arithematic-Swift.h"

ArithemticSwift *arithemticSwift = [[ArithemticSwift alloc] init];

Arithematic *Arithematic::instance = NULL;

Arithematic::Arithematic() {
    instance = this;
    NSLog(@"initialize arithematic");
}

Arithematic::~Arithematic() {
    if (instance == this) {
        instance = NULL;
    }
    NSLog(@"deinitialize arithematic");
}

Arithematic *Arithematic::get_singleton() {
    return instance;
};


void Arithematic::_bind_methods() {
    ADD_SIGNAL(MethodInfo("multiply_result", PropertyInfo(Variant::STRING, "result")));
    
    ClassDB::bind_method("add", &Arithematic::add);
    ClassDB::bind_method("sub", &Arithematic::sub);
    ClassDB::bind_method("multiply", &Arithematic::multiply);
}

int Arithematic::add() {
    int num1 = 5; // First hardcoded number
    int num2 = 10; // Second hardcoded number
    
    int result = num1 + num2;
    NSLog(@"Result of addition: %d", result);


    
    return result;
}

int Arithematic::sub(int num1, int num2) {
    int result = num1 - num2;
    NSLog(@"Result of subtraction: %d", result);
    return result;
}


void Arithematic::multiply(){
    emit_signal("multiply_result", "Hello from Godot");
}
