/* sfml/Windows header file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_Windows___
#define ___sfml_Windows___

#include <./sfml/Windows-fwd.h>
#include <sdk/lang/types.h>

struct _sfml_Windows__Style {
    struct _lang_types__Object __super__;
};


struct _sfml_Windows__EventType {
    struct _lang_types__Object __super__;
};


struct _sfml_Windows__WindowHandleClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__StyleClass {
    struct _lang_types__ClassClass __super__;
    sfml_Windows__Style* (*new)();
    void (*init)(sfml_Windows__Style*);
};


struct _sfml_Windows__VideoModeClass {
    struct _lang_types__ClassClass __super__;
    sfml_Windows__VideoMode (*new_with_bpp)(lang_Numbers__UInt, lang_Numbers__UInt, lang_Numbers__UInt);
    sfml_Windows__VideoMode (*new)(lang_Numbers__UInt, lang_Numbers__UInt);
};


struct _sfml_Windows__WindowClass {
    struct _lang_types__ClassClass __super__;
    sfml_Windows__Window (*new_noSettings)(sfml_Windows__VideoMode, lang_Character__Char*, lang_Numbers__ULong);
    sfml_Windows__Window (*new_noStyleAndSettings)(sfml_Windows__VideoMode, lang_Character__Char*);
};


struct _sfml_Windows__InputClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__ContextSettingsClass {
    struct _lang_types__ClassClass __super__;
    sfml_Windows__ContextSettings (*new)(lang_Numbers__UInt, lang_Numbers__UInt, lang_Numbers__UInt, lang_Numbers__UInt, lang_Numbers__UInt);
    sfml_Windows__ContextSettings (*new_default)();
};


struct _sfml_Windows__EventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__JoyButtonEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__JoyAxisClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__JoyMoveEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__KeyCodeClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__KeyEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__MouseButtonClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__MouseButtonEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__MouseMoveEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__MouseWheelEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__SizeEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__TextEventClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Windows__EventTypeClass {
    struct _lang_types__ClassClass __super__;
    lang_Numbers__Int closed;
    lang_Numbers__Int resized;
    lang_Numbers__Int lostFocus;
    lang_Numbers__Int gainedFocus;
    lang_Numbers__Int textEntered;
    lang_Numbers__Int keyPressed;
    lang_Numbers__Int keyReleased;
    lang_Numbers__Int mouseWheelMoved;
    lang_Numbers__Int mouseButtonPressed;
    lang_Numbers__Int mouseButtonReleased;
    lang_Numbers__Int mouseMoved;
    lang_Numbers__Int mouseEntered;
    lang_Numbers__Int mouseLeft;
    lang_Numbers__Int joyButtonPressed;
    lang_Numbers__Int joyButtonReleased;
    lang_Numbers__Int joyMoved;
    sfml_Windows__EventType* (*new)();
    void (*init)(sfml_Windows__EventType*);
};


#ifdef OOC_FROM_C
#define WindowHandle sfml_Windows__WindowHandle
#define WindowHandle_class() sfml_Windows__WindowHandle_class()
#define WindowHandleClass sfml_Windows__WindowHandleClass
#define WindowHandleClass_class() sfml_Windows__WindowHandleClass_class()
#define WindowHandle___load__() sfml_Windows__WindowHandle___load__()
#define Style sfml_Windows__Style
#define Style_class() sfml_Windows__Style_class()
#define StyleClass sfml_Windows__StyleClass
#define StyleClass_class() sfml_Windows__StyleClass_class()
#define Style_new() (void*) sfml_Windows__Style_new()
#define Style_init(_this_) sfml_Windows__Style_init((void*) (_this_))
#define Style___defaults__(_this_) sfml_Windows__Style___defaults__((void*) (_this_))
#define Style___load__() sfml_Windows__Style___load__()
#define VideoMode sfml_Windows__VideoMode
#define VideoMode_class() sfml_Windows__VideoMode_class()
#define VideoModeClass sfml_Windows__VideoModeClass
#define VideoModeClass_class() sfml_Windows__VideoModeClass_class()
#define VideoMode_getDesktopMode() sfml_Windows__VideoMode_getDesktopMode()
#define VideoMode_getMode(index) sfml_Windows__VideoMode_getMode((index))
#define VideoMode_getModesCount() sfml_Windows__VideoMode_getModesCount()
#define VideoMode_isValid(_this_) sfml_Windows__VideoMode_isValid((void*) (_this_))
#define VideoMode_new_with_bpp(width, height, bitsPerPixel) sfml_Windows__VideoMode_new_with_bpp((width), (height), (bitsPerPixel))
#define VideoMode_new(width, height) sfml_Windows__VideoMode_new((width), (height))
#define VideoMode___load__() sfml_Windows__VideoMode___load__()
#define Window sfml_Windows__Window
#define Window_class() sfml_Windows__Window_class()
#define WindowClass sfml_Windows__WindowClass
#define WindowClass_class() sfml_Windows__WindowClass_class()
#define Window_new_allParams(mode, title, style, params) sfml_Windows__Window_new_allParams((mode), (title), (style), (params))
#define Window_new_noSettings(mode, title, style) sfml_Windows__Window_new_noSettings((mode), (title), (style))
#define Window_new_noStyleAndSettings(mode, title) sfml_Windows__Window_new_noStyleAndSettings((mode), (title))
#define Window_new_fromHandle(handle, params) sfml_Windows__Window_new_fromHandle((handle), (params))
#define Window_destroy(_this_) sfml_Windows__Window_destroy((void*) (_this_))
#define Window_close(_this_) sfml_Windows__Window_close((void*) (_this_))
#define Window_opened__quest(_this_) sfml_Windows__Window_opened__quest((void*) (_this_))
#define Window_getWidth(_this_) sfml_Windows__Window_getWidth((void*) (_this_))
#define Window_getHeight(_this_) sfml_Windows__Window_getHeight((void*) (_this_))
#define Window_getSettings(_this_) sfml_Windows__Window_getSettings((void*) (_this_))
#define Window_getEvent(_this_, event) sfml_Windows__Window_getEvent((void*) (_this_), (event))
#define Window_useVerticalSync(_this_, enabled) sfml_Windows__Window_useVerticalSync((void*) (_this_), (enabled))
#define Window_showMouseCursor(_this_, show) sfml_Windows__Window_showMouseCursor((void*) (_this_), (show))
#define Window_setCursorPosition(_this_, left, top) sfml_Windows__Window_setCursorPosition((void*) (_this_), (left), (top))
#define Window_setPosition(_this_, left, top) sfml_Windows__Window_setPosition((void*) (_this_), (left), (top))
#define Window_setSize(_this_, width, height) sfml_Windows__Window_setSize((void*) (_this_), (width), (height))
#define Window_show(_this_, state) sfml_Windows__Window_show((void*) (_this_), (state))
#define Window_enableKeyRepeat(_this_, enabled) sfml_Windows__Window_enableKeyRepeat((void*) (_this_), (enabled))
#define Window_setIcon(_this_, width, height, pixels) sfml_Windows__Window_setIcon((void*) (_this_), (width), (height), (pixels))
#define Window_setActive(_this_, active) sfml_Windows__Window_setActive((void*) (_this_), (active))
#define Window_display(_this_) sfml_Windows__Window_display((void*) (_this_))
#define Window_getInput(_this_) sfml_Windows__Window_getInput((void*) (_this_))
#define Window_setFramerateLimit(_this_, limit) sfml_Windows__Window_setFramerateLimit((void*) (_this_), (limit))
#define Window_getFrameTime(_this_) sfml_Windows__Window_getFrameTime((void*) (_this_))
#define Window_setJoystickThreshold(_this_, threshold) sfml_Windows__Window_setJoystickThreshold((void*) (_this_), (threshold))
#define Window_getSystemHandle(_this_) sfml_Windows__Window_getSystemHandle((void*) (_this_))
#define Window___load__() sfml_Windows__Window___load__()
#define Input sfml_Windows__Input
#define Input_class() sfml_Windows__Input_class()
#define InputClass sfml_Windows__InputClass
#define InputClass_class() sfml_Windows__InputClass_class()
#define Input_keyDown__quest(_this_, keyCode) sfml_Windows__Input_keyDown__quest((void*) (_this_), (keyCode))
#define Input_mouseButtonDown__quest(_this_, button) sfml_Windows__Input_mouseButtonDown__quest((void*) (_this_), (button))
#define Input_joystickButtonDown__quest(_this_, joyId, button) sfml_Windows__Input_joystickButtonDown__quest((void*) (_this_), (joyId), (button))
#define Input_getMouseX(_this_) sfml_Windows__Input_getMouseX((void*) (_this_))
#define Input_getMouseY(_this_) sfml_Windows__Input_getMouseY((void*) (_this_))
#define Input_getJoystickAxis(_this_, joyId, axis) sfml_Windows__Input_getJoystickAxis((void*) (_this_), (joyId), (axis))
#define Input___load__() sfml_Windows__Input___load__()
#define ContextSettings sfml_Windows__ContextSettings
#define ContextSettings_class() sfml_Windows__ContextSettings_class()
#define ContextSettingsClass sfml_Windows__ContextSettingsClass
#define ContextSettingsClass_class() sfml_Windows__ContextSettingsClass_class()
#define ContextSettings_new(depthBits, stencilBits, antialiasingLevel, majorVersion, minorVersion) sfml_Windows__ContextSettings_new((depthBits), (stencilBits), (antialiasingLevel), (majorVersion), (minorVersion))
#define ContextSettings_new_default() sfml_Windows__ContextSettings_new_default()
#define ContextSettings___load__() sfml_Windows__ContextSettings___load__()
#define Event sfml_Windows__Event
#define Event_class() sfml_Windows__Event_class()
#define EventClass sfml_Windows__EventClass
#define EventClass_class() sfml_Windows__EventClass_class()
#define Event___load__() sfml_Windows__Event___load__()
#define JoyButtonEvent sfml_Windows__JoyButtonEvent
#define JoyButtonEvent_class() sfml_Windows__JoyButtonEvent_class()
#define JoyButtonEventClass sfml_Windows__JoyButtonEventClass
#define JoyButtonEventClass_class() sfml_Windows__JoyButtonEventClass_class()
#define JoyButtonEvent___load__() sfml_Windows__JoyButtonEvent___load__()
#define JoyAxis sfml_Windows__JoyAxis
#define JoyAxis_class() sfml_Windows__JoyAxis_class()
#define JoyAxisClass sfml_Windows__JoyAxisClass
#define JoyAxisClass_class() sfml_Windows__JoyAxisClass_class()
#define JoyAxis___load__() sfml_Windows__JoyAxis___load__()
#define JoyMoveEvent sfml_Windows__JoyMoveEvent
#define JoyMoveEvent_class() sfml_Windows__JoyMoveEvent_class()
#define JoyMoveEventClass sfml_Windows__JoyMoveEventClass
#define JoyMoveEventClass_class() sfml_Windows__JoyMoveEventClass_class()
#define JoyMoveEvent___load__() sfml_Windows__JoyMoveEvent___load__()
#define KeyCode sfml_Windows__KeyCode
#define KeyCode_class() sfml_Windows__KeyCode_class()
#define KeyCodeClass sfml_Windows__KeyCodeClass
#define KeyCodeClass_class() sfml_Windows__KeyCodeClass_class()
#define KeyCode___load__() sfml_Windows__KeyCode___load__()
#define KeyEvent sfml_Windows__KeyEvent
#define KeyEvent_class() sfml_Windows__KeyEvent_class()
#define KeyEventClass sfml_Windows__KeyEventClass
#define KeyEventClass_class() sfml_Windows__KeyEventClass_class()
#define KeyEvent___load__() sfml_Windows__KeyEvent___load__()
#define MouseButton sfml_Windows__MouseButton
#define MouseButton_class() sfml_Windows__MouseButton_class()
#define MouseButtonClass sfml_Windows__MouseButtonClass
#define MouseButtonClass_class() sfml_Windows__MouseButtonClass_class()
#define MouseButton___load__() sfml_Windows__MouseButton___load__()
#define MouseButtonEvent sfml_Windows__MouseButtonEvent
#define MouseButtonEvent_class() sfml_Windows__MouseButtonEvent_class()
#define MouseButtonEventClass sfml_Windows__MouseButtonEventClass
#define MouseButtonEventClass_class() sfml_Windows__MouseButtonEventClass_class()
#define MouseButtonEvent___load__() sfml_Windows__MouseButtonEvent___load__()
#define MouseMoveEvent sfml_Windows__MouseMoveEvent
#define MouseMoveEvent_class() sfml_Windows__MouseMoveEvent_class()
#define MouseMoveEventClass sfml_Windows__MouseMoveEventClass
#define MouseMoveEventClass_class() sfml_Windows__MouseMoveEventClass_class()
#define MouseMoveEvent___load__() sfml_Windows__MouseMoveEvent___load__()
#define MouseWheelEvent sfml_Windows__MouseWheelEvent
#define MouseWheelEvent_class() sfml_Windows__MouseWheelEvent_class()
#define MouseWheelEventClass sfml_Windows__MouseWheelEventClass
#define MouseWheelEventClass_class() sfml_Windows__MouseWheelEventClass_class()
#define MouseWheelEvent___load__() sfml_Windows__MouseWheelEvent___load__()
#define SizeEvent sfml_Windows__SizeEvent
#define SizeEvent_class() sfml_Windows__SizeEvent_class()
#define SizeEventClass sfml_Windows__SizeEventClass
#define SizeEventClass_class() sfml_Windows__SizeEventClass_class()
#define SizeEvent___load__() sfml_Windows__SizeEvent___load__()
#define TextEvent sfml_Windows__TextEvent
#define TextEvent_class() sfml_Windows__TextEvent_class()
#define TextEventClass sfml_Windows__TextEventClass
#define TextEventClass_class() sfml_Windows__TextEventClass_class()
#define TextEvent___load__() sfml_Windows__TextEvent___load__()
#define EventType sfml_Windows__EventType
#define EventType_class() sfml_Windows__EventType_class()
#define EventTypeClass sfml_Windows__EventTypeClass
#define EventTypeClass_class() sfml_Windows__EventTypeClass_class()
#define EventType_new() (void*) sfml_Windows__EventType_new()
#define EventType_init(_this_) sfml_Windows__EventType_init((void*) (_this_))
#define EventType___defaults__(_this_) sfml_Windows__EventType___defaults__((void*) (_this_))
#define EventType___load__() sfml_Windows__EventType___load__()
#endif

#endif // ___sfml_Windows___
