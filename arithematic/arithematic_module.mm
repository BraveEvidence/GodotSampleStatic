#ifdef VERSION_4_0
#include "core/config/engine.h"
#else
#include "core/engine.h"
#endif


#include "arithematic_module.h"

Arithematic * arithematic;

void register_arithematic_types() {
    arithematic = memnew(Arithematic);
    Engine::get_singleton()->add_singleton(Engine::Singleton("Arithematic", arithematic));
};

void unregister_arithematic_types() {
    if (arithematic) {
        memdelete(arithematic);
    }
}
