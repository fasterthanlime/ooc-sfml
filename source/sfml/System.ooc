include SFML/System

use csfml-system

UInt32: cover from sfUint32
UInt8: cover from sfUint8

Vector2i: cover from sfVector2i {
    x: extern Int
    y: extern Int
}

Vector2u: cover from sfVector2u {
    x: extern UInt
    y: extern UInt
}

Vector2f: cover from sfVector2f {
    x: extern Float
    y: extern Float
}

Mutex: cover from sfMutex* {
    new: extern(sfMutex_create) static func -> Mutex
    destroy: extern(sfMutex_destroy) func
    lock: extern(sfMutex_lock) func
    unlock: extern(sfMutex_unlock) func
}

Thread: cover from sfThread* {
    new: extern(sfThread_create) static func (function: Func, userData: Void*) -> Thread
    destroy: extern(sfThread_destroy) func
    launch: extern(sfThread_launch) func
    wait: extern(sfThread_wait) func
    terminate: extern(sfThread_terminate) func
}

Time: cover from sfTime {
    microseconds: extern UInt64
}

Clock: cover from sfClock* {
    new: extern(sfClock_create) static func -> Clock
    copy: extern(sfClock_copy) func -> Clock
    destroy: extern(sfClock_destroy) func
    getElapsedTime: extern(sfClock_getElapsedTime) func -> Time
    restart: extern(sfClock_restart) func
}

/*
Random: cover {
    setSeed: extern(sfRandom_setSeed) static func (seed: UInt)
    getSeed: extern(sfRandom_getSeed) static func -> UInt
    float_: extern(sfRandom_float) static func (begin: Float, end: Float) -> Float
    int_: extern(sfRandom_int) static func (begin: Int, end: Int) -> Int
}
*/

sleep: extern(sfSleep) func (duration: Float)

