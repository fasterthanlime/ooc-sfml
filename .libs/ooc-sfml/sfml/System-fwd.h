/* sfml/System header-forward file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_System_fwd___
#define ___sfml_System_fwd___

#include <SFML/System.h>

typedef sfUint32 sfml_System__UInt32;
typedef sfUint8 sfml_System__UInt8;
typedef sfMutex* sfml_System__Mutex;
typedef sfThread* sfml_System__Thread;
typedef sfClock* sfml_System__Clock;
typedef struct _sfml_System__Random sfml_System__Random;
struct _sfml_System__UInt32Class;
typedef struct _sfml_System__UInt32Class sfml_System__UInt32Class;
struct _sfml_System__UInt8Class;
typedef struct _sfml_System__UInt8Class sfml_System__UInt8Class;
struct _sfml_System__MutexClass;
typedef struct _sfml_System__MutexClass sfml_System__MutexClass;
struct _sfml_System__ThreadClass;
typedef struct _sfml_System__ThreadClass sfml_System__ThreadClass;
struct _sfml_System__ClockClass;
typedef struct _sfml_System__ClockClass sfml_System__ClockClass;
struct _sfml_System__RandomClass;
typedef struct _sfml_System__RandomClass sfml_System__RandomClass;

#include <sdk/lang/String-fwd.h>
#include <sdk/lang/BufferIterator-fwd.h>
#include <sdk/lang/Character-fwd.h>
#include <sdk/lang/Exception-fwd.h>
#include <sdk/lang/System-fwd.h>
#include <sdk/lang/Format-fwd.h>
#include <sdk/lang/Numbers-fwd.h>
#include <sdk/lang/VarArgs-fwd.h>
#include <sdk/lang/Abstractions-fwd.h>
#include <sdk/lang/Iterators-fwd.h>
#include <sdk/lang/Memory-fwd.h>
#include <sdk/lang/types-fwd.h>
#include <sdk/lang/IO-fwd.h>
#include <sdk/lang/Buffer-fwd.h>

#ifndef __FUNC____DEFINE
#define __FUNC____DEFINE

typedef void (*__FUNC__)(void*);

#endif

sfml_System__UInt32Class *sfml_System__UInt32_class();
void sfml_System__UInt32___load__();
sfml_System__UInt8Class *sfml_System__UInt8_class();
void sfml_System__UInt8___load__();
sfml_System__MutexClass *sfml_System__Mutex_class();
#define sfml_System__Mutex_new sfMutex_Create

#define sfml_System__Mutex_destroy sfMutex_Destroy

#define sfml_System__Mutex_lock sfMutex_Lock

#define sfml_System__Mutex_unlock sfMutex_Unlock

void sfml_System__Mutex___load__();
#define sfml_System__Mutex_new sfMutex_Create

sfml_System__ThreadClass *sfml_System__Thread_class();
#define sfml_System__Thread_new sfThread_Create

#define sfml_System__Thread_destroy sfThread_Destroy

#define sfml_System__Thread_launch sfThread_Launch

#define sfml_System__Thread_wait sfThread_Wait

#define sfml_System__Thread_terminate sfThread_Terminate

void sfml_System__Thread___load__();
#define sfml_System__Thread_new sfThread_Create

sfml_System__ClockClass *sfml_System__Clock_class();
#define sfml_System__Clock_new sfClock_Create

#define sfml_System__Clock_copy sfClock_Copy

#define sfml_System__Clock_destroy sfClock_Destroy

#define sfml_System__Clock_getTime sfClock_GetTime

#define sfml_System__Clock_reset sfClock_Reset

void sfml_System__Clock___load__();
#define sfml_System__Clock_new sfClock_Create

sfml_System__RandomClass *sfml_System__Random_class();
#define sfml_System__Random_setSeed sfRandom_SetSeed

#define sfml_System__Random_getSeed sfRandom_GetSeed

#define sfml_System__Random_float_ sfRandom_Float

#define sfml_System__Random_int_ sfRandom_Int

void sfml_System__Random___load__();
#define sfml_System__Random_setSeed sfRandom_SetSeed

#define sfml_System__Random_getSeed sfRandom_GetSeed

#define sfml_System__Random_float_ sfRandom_Float

#define sfml_System__Random_int_ sfRandom_Int

void sfml_System_load();
#define sfml_System__sleep sfSleep


#endif // ___sfml_System_fwd___
