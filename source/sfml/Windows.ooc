import sfml/System
import structs/ArrayList

include SFML/Window

use sfml

WindowHandle: cover from sfWindowHandle

Style: class {
    none: extern(sfNone) static UInt
    titleBar: extern(sfTitlebar) static UInt
    resize: extern(sfResize) static UInt
    close: extern(sfClose) static UInt
    fullScreen: extern(sfFullscreen) static UInt
    default: extern(sfDefaultStyle) static UInt
}

VideoMode: cover from sfVideoMode {
    width: extern UInt
    height: extern UInt
    bitsPerPixel: extern UInt

    getFullScreenModes: extern(sfVideoMode_getFullscreenModes) static func ~pointers (SizeT*) -> This*
    getFullScreenModes: static func ~arrayList -> ArrayList<This> {
        num: SizeT
        arr := getFullScreenModes(num&)
        ArrayList<This> new(arr, num)
    }
    getDesktopMode: extern(sfVideoMode_getDesktopMode) static func -> VideoMode
    valid?: extern(sfVideoMode_IsValid) func -> Bool

    new: static func ~with_bpp (.width, .height, .bitsPerPixel) -> This {
        mode: VideoMode
        mode width = width
        mode height = height
        mode bitsPerPixel = bitsPerPixel
        return mode
    }

    new: static func (.width, .height) -> This {
        This new(width, height, 32)
    }
}

Window: cover from sfWindow* {
    new: extern(sfWindow_create) static func ~allParams(mode: VideoMode, title: Char*, style: ULong, params: ContextSettings*) -> Window
    new: static func ~noSettings(mode: VideoMode, title: Char*, style: ULong) -> Window {
        new(mode,title,style,null)
    }
    new: static func ~noStyleAndSettings(mode: VideoMode, title: Char*) -> Window {
        new(mode,title,Style default)
    }
    new: static func ~noStyleAndSettingsString(mode: VideoMode, title: String) -> Window {
        new(mode,title toCString())
    }
    new: extern(sfWindow_createFromHandle) static func ~fromHandle (handle: WindowHandle, params: ContextSettings*) -> Window
    destroy: extern(sfWindow_Destroy) func
    close: extern(sfWindow_Close) func
    getWidth: extern(sfWindow_GetWidth) func -> UInt
    getHeight: extern(sfWindow_GetHeight) func -> UInt
    getSettings: extern(sfWindow_GetSettings) func -> ContextSettings
    pollEvent: extern(sfWindow_PollEvent) func (event: Event*) -> Bool
    waitEvent: extern(sfWindow_WaitEvent) func (event: Event*) -> Bool
    enableVerticalSync: extern(sfWindow_EnableVerticalSync) func (enabled: Bool)
    showMouseCursor: extern(sfWindow_ShowMouseCursor) func (show: Bool)
    setCursorPosition: extern(sfWindow_SetCursorPosition) func (left: UInt, top: UInt)
    setPosition: extern(sfWindow_setPosition) func (left: Int, top: Int)
    setSize: extern(sfWindow_setSize) func (width: UInt, height: UInt)
    setTitle: extern(sfWindow_setTitle) func ~charPtr (Char*)
    setTitle: func ~str (str: String) {
        setTitle(str toCString())
    }
    show: extern(sfWindow_Show) func (state: Bool)
    enableKeyRepeat: extern(sfWindow_EnableKeyRepeat) func (enabled: Bool)
    setIcon: extern(sfWindow_SetIcon) func (width: UInt, height: UInt, pixels: UInt8*)
    setActive: extern(sfWindow_SetActive) func (active: Bool) -> Bool
    display: extern(sfWindow_Display) func
    setFramerateLimit: extern(sfWindow_SetFramerateLimit) func (limit: UInt)
    getFrameTime: extern(sfWindow_GetFrameTime) func -> UInt8
    setJoystickThreshold: extern(sfWindow_SetJoystickThreshold) func (threshold: Float)
    getSystemHandle: extern(sfWindow_GetSystemHandle) func -> WindowHandle
}

ContextSettings : cover from sfContextSettings {
    depthBits: extern UInt
    stencilBits: extern UInt
    antialiasingLevel: extern UInt
    majorVersion: extern UInt
    minorVersion: extern UInt

    new: static func (.depthBits, .stencilBits, .antialiasingLevel, .majorVersion, .minorVersion) -> This {
        this: ContextSettings
        this depthBits = depthBits
        this stencilBits = stencilBits
        this antialiasingLevel = antialiasingLevel
        this majorVersion = majorVersion
        this minorVersion = minorVersion
        this
    }

    new: static func ~default -> This {
        This new(24, 8, 0, 2, 0)
    }
}


Event: cover from sfEvent {
    type: extern Int

    key: extern KeyEvent
    text: extern TextEvent
    mouseMoveEvent: extern(MouseMove) MouseMoveEvent
    mouseButtonEvent: extern(MouseButton) MouseButtonEvent
    mouseWheelEvent: extern(MouseWheel) MouseWheelEvent
    joyMoveEvent: extern(JoyMove) JoyMoveEvent
    joyButtonEvent: extern(JoyButton) JoyButtonEvent
    sizeEvent: extern(Size) SizeEvent
}

JoyButtonEvent: extern cover from struct sfJoyButtonEvent {
    type: extern(Type) Int
    joystickId: extern(JoystickId) UInt
    button: extern(Button) UInt
}

JoyMoveEvent: extern cover from struct sfJoyMoveEvent {
    type: extern(Type) Int
    joystickId: extern(JoystickId) UInt
    position: extern(Position) Float
}

KeyCode: cover from sfKeyCode {
    A: extern(sfKeyA) static Char
    B: extern(sfKeyB) static Char
    C: extern(sfKeyC) static Char
    D: extern(sfKeyD) static Char
    E: extern(sfKeyE) static Char
    F: extern(sfKeyF) static Char
    G: extern(sfKeyG) static Char
    H: extern(sfKeyH) static Char
    I: extern(sfKeyI) static Char
    J: extern(sfKeyJ) static Char
    K: extern(sfKeyK) static Char
    L: extern(sfKeyL) static Char
    M: extern(sfKeyM) static Char
    N: extern(sfKeyN) static Char
    O: extern(sfKeyO) static Char
    P: extern(sfKeyP) static Char
    Q: extern(sfKeyQ) static Char
    R: extern(sfKeyR) static Char
    S: extern(sfKeyS) static Char
    T: extern(sfKeyT) static Char
    U: extern(sfKeyU) static Char
    V: extern(sfKeyV) static Char
    W: extern(sfKeyW) static Char
    X: extern(sfKeyX) static Char
    Y: extern(sfKeyY) static Char
    Z: extern(sfKeyZ) static Char
    
    Escape: extern(sfKeyEscape) static Char
    LControl: extern(sfKeyLControl) static Char
    LShift: extern(sfKeyLShift) static Char
    LAlt: extern(sfKeyLAlt) static Char
    LSystem: extern(sfKeyLSystem) static Char
    RControl: extern(sfKeyRControl) static Char
    RShift: extern(sfKeyRShift) static Char
    RAlt: extern(sfKeyRAlt) static Char
    RSystem: extern(sfKeyRSystem) static Char
    Menu: extern(sfKeyMenu) static Char
    LBracket: extern(sfKeyLBracket) static Char
    RBracket: extern(sfKeyRBracket) static Char
    SemiColon: extern(sfKeySemiColon) static Char
    Comma: extern(sfKeyComma) static Char
    Period: extern(sfKeyPeriod) static Char
    Quote: extern(sfKeyQuote) static Char
    Slash: extern(sfKeySlash) static Char
    BackSlash: extern(sfKeyBackSlash) static Char
    Tilde: extern(sfKeyTilde) static Char
    Equal: extern(sfKeyEqual) static Char
    Dash: extern(sfKeyDash) static Char
    Space: extern(sfKeySpace) static Char
    Return: extern(sfKeyReturn) static Char
    Back: extern(sfKeyBack) static Char
    Tab: extern(sfKeyTab) static Char
    PageUp: extern(sfKeyPageUp) static Char
    PageDown: extern(sfKeyPageDown) static Char
    End: extern(sfKeyEnd) static Char
    Home: extern(sfKeyHome) static Char
    Insert: extern(sfKeyInsert) static Char
    Delete: extern(sfKeyDelete) static Char
    Add: extern(sfKeyAdd) static Char
    Subtract: extern(sfKeySubtract) static Char
    Multiply: extern(sfKeyMultiply) static Char
    Divide: extern(sfKeyDivide) static Char
    Left: extern(sfKeyLeft) static Char
    Right: extern(sfKeyRight) static Char
    Up: extern(sfKeyUp) static Char
    Down: extern(sfKeyDown) static Char
    Numpad0: extern(sfKeyNumpad0) static Char
    Numpad1: extern(sfKeyNumpad1) static Char
    Numpad2: extern(sfKeyNumpad2) static Char
    Numpad3: extern(sfKeyNumpad3) static Char
    Numpad4: extern(sfKeyNumpad4) static Char
    Numpad5: extern(sfKeyNumpad5) static Char
    Numpad6: extern(sfKeyNumpad6) static Char
    Numpad7: extern(sfKeyNumpad7) static Char
    Numpad8: extern(sfKeyNumpad8) static Char
    Numpad9: extern(sfKeyNumpad9) static Char
    F1: extern(sfKeyF1) static Char
    F2: extern(sfKeyF2) static Char
    F3: extern(sfKeyF3) static Char
    F4: extern(sfKeyF4) static Char
    F5: extern(sfKeyF5) static Char
    F6: extern(sfKeyF6) static Char
    F7: extern(sfKeyF7) static Char
    F8: extern(sfKeyF8) static Char
    F9: extern(sfKeyF9) static Char
    F10: extern(sfKeyF10) static Char
    F11: extern(sfKeyF11) static Char
    F12: extern(sfKeyF12) static Char
    F13: extern(sfKeyF13) static Char
    F14: extern(sfKeyF14) static Char
    F15: extern(sfKeyF15) static Char
    Pause: extern(sfKeyPause) static Char
}

KeyEvent: cover from struct sfKeyEvent {
    type: extern Int
    code: extern KeyCode
    alt: extern Bool
    control: extern Bool
    shift: extern Bool
}

MouseButton: cover from sfMouseButton {
    Left: extern(sfButtonLeft) static Int
    Right: extern(sfButtonRight) static Int
    Middle: extern(sfButtonMiddle) static Int
    X1: extern(sfButtonX1) static Int
    X2: extern(sfButtonX2) static Int
}


MouseButtonEvent: cover from struct sfMouseButtonEvent {
    type: extern(Type) Int
    button: extern(Button) MouseButton
    x: extern(X) Int
    y: extern(Y) Int
}

MouseMoveEvent: cover from struct sfMouseMoveEvent {
    type: extern(Type) Int
    x: extern(X) Int
    y: extern(Y) Int
}

MouseWheelEvent: cover from struct sfMouseWheelEvent {
    type: extern(Type) Int
    delta: extern(Delta) Int
}

SizeEvent: cover from struct sfSizeEvent {
    type: extern(Type) Int
    width: extern(Width) UInt
    height: extern(Height) UInt
}

TextEvent: cover from struct sfTextEvent {
    type: extern(Type) Int
    unicode: extern(Unicode) UInt32
}

EventType: class {
    closed = 0,
    resized = 1,
    lostFocus = 2,
    gainedFocus = 3,
    textEntered = 4,
    keyPressed = 5,
    keyReleased = 6,
    mouseWheelMoved = 7,
    mouseButtonPressed = 8,
    mouseButtonReleased = 9,
    mouseMoved = 10,
    mouseEntered = 11,
    mouseLeft = 12,
    joyButtonPressed = 13,
    joyButtonReleased = 14,
    joyMoved = 15 : static const Int
}
