#ifndef ARITHEMATIC_H
#define ARITHEMATIC_H

#ifdef VERSION_4_0
#include "core/object/object.h"
#endif

#ifdef VERSION_3_X
#include "core/object.h"
#endif


class Arithematic : public Object {

    GDCLASS(Arithematic, Object);

    static Arithematic *instance;

public:
    int add();
    int sub(int num1, int num2);
    void multiply();
    static Arithematic *get_singleton();
    
    Arithematic();
    ~Arithematic();

protected:
    static void _bind_methods();
};

#endif
