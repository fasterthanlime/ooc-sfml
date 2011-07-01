/* sfml/System header file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_System___
#define ___sfml_System___

#include <./sfml/System-fwd.h>
#include <sdk/lang/types.h>

struct _sfml_System__Random {
};

struct _sfml_System__UInt32Class {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_System__UInt8Class {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_System__MutexClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_System__ThreadClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_System__ClockClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_System__RandomClass {
    struct _lang_types__ClassClass __super__;
};


#ifdef OOC_FROM_C
#define sleep(duration) sfml_System__sleep((duration))
#define UInt32 sfml_System__UInt32
#define UInt32_class() sfml_System__UInt32_class()
#define UInt32Class sfml_System__UInt32Class
#define UInt32Class_class() sfml_System__UInt32Class_class()
#define UInt32___load__() sfml_System__UInt32___load__()
#define UInt8 sfml_System__UInt8
#define UInt8_class() sfml_System__UInt8_class()
#define UInt8Class sfml_System__UInt8Class
#define UInt8Class_class() sfml_System__UInt8Class_class()
#define UInt8___load__() sfml_System__UInt8___load__()
#define Mutex sfml_System__Mutex
#define Mutex_class() sfml_System__Mutex_class()
#define MutexClass sfml_System__MutexClass
#define MutexClass_class() sfml_System__MutexClass_class()
#define Mutex_new() sfml_System__Mutex_new()
#define Mutex_destroy(_this_) sfml_System__Mutex_destroy((void*) (_this_))
#define Mutex_lock(_this_) sfml_System__Mutex_lock((void*) (_this_))
#define Mutex_unlock(_this_) sfml_System__Mutex_unlock((void*) (_this_))
#define Mutex___load__() sfml_System__Mutex___load__()
#define Thread sfml_System__Thread
#define Thread_class() sfml_System__Thread_class()
#define ThreadClass sfml_System__ThreadClass
#define ThreadClass_class() sfml_System__ThreadClass_class()
#define Thread_new(function, userData) sfml_System__Thread_new((function), (void*) (userData))
#define Thread_destroy(_this_) sfml_System__Thread_destroy((void*) (_this_))
#define Thread_launch(_this_) sfml_System__Thread_launch((void*) (_this_))
#define Thread_wait(_this_) sfml_System__Thread_wait((void*) (_this_))
#define Thread_terminate(_this_) sfml_System__Thread_terminate((void*) (_this_))
#define Thread___load__() sfml_System__Thread___load__()
#define Clock sfml_System__Clock
#define Clock_class() sfml_System__Clock_class()
#define ClockClass sfml_System__ClockClass
#define ClockClass_class() sfml_System__ClockClass_class()
#define Clock_new() sfml_System__Clock_new()
#define Clock_copy(_this_) sfml_System__Clock_copy((void*) (_this_))
#define Clock_destroy(_this_) sfml_System__Clock_destroy((void*) (_this_))
#define Clock_getTime(_this_) sfml_System__Clock_getTime((void*) (_this_))
#define Clock_reset(_this_) sfml_System__Clock_reset((void*) (_this_))
#define Clock___load__() sfml_System__Clock___load__()
#define Random sfml_System__Random
#define Random_class() sfml_System__Random_class()
#define RandomClass sfml_System__RandomClass
#define RandomClass_class() sfml_System__RandomClass_class()
#define Random_setSeed(seed) sfml_System__Random_setSeed((seed))
#define Random_getSeed() sfml_System__Random_getSeed()
#define Random_float_(begin, end) sfml_System__Random_float_((begin), (end))
#define Random_int_(begin, end) sfml_System__Random_int_((begin), (end))
#define Random___load__() sfml_System__Random___load__()
#endif

#endif // ___sfml_System___
