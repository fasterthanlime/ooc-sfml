/* sfml/PausableClock header-forward file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_PausableClock_fwd___
#define ___sfml_PausableClock_fwd___

struct _sfml_PausableClock__PausableClock;
typedef struct _sfml_PausableClock__PausableClock sfml_PausableClock__PausableClock;
struct _sfml_PausableClock__PausableClockClass;
typedef struct _sfml_PausableClock__PausableClockClass sfml_PausableClock__PausableClockClass;

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
#include <./sfml/System-fwd.h>
sfml_PausableClock__PausableClockClass *sfml_PausableClock__PausableClock_class();
sfml_PausableClock__PausableClock* sfml_PausableClock__PausableClock_new_empty();
void sfml_PausableClock__PausableClock_init_empty(sfml_PausableClock__PausableClock* this);
sfml_PausableClock__PausableClock* sfml_PausableClock__PausableClock_new_withPaused(lang_types__Bool paused__quest);
void sfml_PausableClock__PausableClock_init_withPaused(sfml_PausableClock__PausableClock* this, lang_types__Bool paused__quest);
void sfml_PausableClock__PausableClock_pause(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock_pause_impl(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock_start(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock_start_impl(sfml_PausableClock__PausableClock* this);
lang_Numbers__Float sfml_PausableClock__PausableClock_getTime(sfml_PausableClock__PausableClock* this);
lang_Numbers__Float sfml_PausableClock__PausableClock_getTime_impl(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock_reset_withPaused(sfml_PausableClock__PausableClock* this, lang_types__Bool paused__quest);
void sfml_PausableClock__PausableClock_reset_withPaused_impl(sfml_PausableClock__PausableClock* this, lang_types__Bool paused__quest);
void sfml_PausableClock__PausableClock_reset_empty(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock_reset_empty_impl(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock___defaults__(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock___defaults___impl(sfml_PausableClock__PausableClock* this);
void sfml_PausableClock__PausableClock___load__();
void sfml_PausableClock_load();

#endif // ___sfml_PausableClock_fwd___
