/* sfml/PausableClock header file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_PausableClock___
#define ___sfml_PausableClock___

#include <./sfml/PausableClock-fwd.h>
#include <sdk/lang/types.h>

struct _sfml_PausableClock__PausableClock {
    struct _lang_types__Object __super__;
    lang_types__Bool paused__quest;
    lang_Numbers__Float time;
    sfml_System__Clock clock;
};


struct _sfml_PausableClock__PausableClockClass {
    struct _lang_types__ClassClass __super__;
    sfml_PausableClock__PausableClock* (*new_empty)();
    void (*init_empty)(sfml_PausableClock__PausableClock*);
    sfml_PausableClock__PausableClock* (*new_withPaused)(lang_types__Bool);
    void (*init_withPaused)(sfml_PausableClock__PausableClock*, lang_types__Bool);
    void (*pause)(sfml_PausableClock__PausableClock*);
    void (*start)(sfml_PausableClock__PausableClock*);
    lang_Numbers__Float (*getTime)(sfml_PausableClock__PausableClock*);
    void (*reset_withPaused)(sfml_PausableClock__PausableClock*, lang_types__Bool);
    void (*reset_empty)(sfml_PausableClock__PausableClock*);
};


#ifdef OOC_FROM_C
#define PausableClock sfml_PausableClock__PausableClock
#define PausableClock_class() sfml_PausableClock__PausableClock_class()
#define PausableClockClass sfml_PausableClock__PausableClockClass
#define PausableClockClass_class() sfml_PausableClock__PausableClockClass_class()
#define PausableClock_new_empty() (void*) sfml_PausableClock__PausableClock_new_empty()
#define PausableClock_init_empty(_this_) sfml_PausableClock__PausableClock_init_empty((void*) (_this_))
#define PausableClock_new_withPaused(paused__quest) (void*) sfml_PausableClock__PausableClock_new_withPaused((paused__quest))
#define PausableClock_init_withPaused(_this_, paused__quest) sfml_PausableClock__PausableClock_init_withPaused((void*) (_this_), (paused__quest))
#define PausableClock_pause(_this_) sfml_PausableClock__PausableClock_pause((void*) (_this_))
#define PausableClock_start(_this_) sfml_PausableClock__PausableClock_start((void*) (_this_))
#define PausableClock_getTime(_this_) sfml_PausableClock__PausableClock_getTime((void*) (_this_))
#define PausableClock_reset_withPaused(_this_, paused__quest) sfml_PausableClock__PausableClock_reset_withPaused((void*) (_this_), (paused__quest))
#define PausableClock_reset_empty(_this_) sfml_PausableClock__PausableClock_reset_empty((void*) (_this_))
#define PausableClock___defaults__(_this_) sfml_PausableClock__PausableClock___defaults__((void*) (_this_))
#define PausableClock___load__() sfml_PausableClock__PausableClock___load__()
#endif

#endif // ___sfml_PausableClock___
