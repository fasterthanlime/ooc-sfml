import sfml/Windows
import sfml/Drawable

include SFML/Graphics
include SFML/Graphics/Glyph
include SFML/Graphics/Font

use csfml-graphics

BlendMode: cover from sfBlendMode {
    alpha: extern(sfBlendAlpha) static Int
    add: extern(sfBlendAdd) static Int
    multiply: extern(sfBlendMultiply) static Int
    none: extern(sfBlendNone) static Int
}

FloatRect: cover from sfFloatRect {
    zero : const static FloatRect = FloatRect new(0,0,0,0) 

    left: extern Float
    top: extern Float
    width: extern Float
    height: extern Float
    
    contains?: func(x,y : Float) -> Bool {
        (x >= left && x <= left+width && y >= top && y <= top+height)
    }
    
    intersection: func(other : FloatRect) -> FloatRect {
        if(other contains?(left,top)) {
            return FloatRect new(left,top,other left + other width - left, other height + other top - top)
        }
        else if(other contains?(left+width,top+height)) {
            return FloatRect new(other left, other top, left + width - other left, height + top - other top)
        }
        else if(other contains?(left+width,top)) {
            return FloatRect new(other left, top, left + width - other left, other height + other top - top)
        }
        else if(other contains?(left,top+height)) {
            return FloatRect new(left, other top, other left + other width - left, height + top - other top)
        }
        FloatRect zero
    }
    //contains? : extern(sfFloatRect_Contains) func(x,y : Float) -> Bool
    //intersects? : extern(sfFloatRect_Intersects) func(rect2,intersection : FloatRect) -> Bool
    //These take pointers to FloatRect :/ 

    new : static func (.left, .top, .width, .height) -> This {
        this: FloatRect
        this left = left
        this top = top
        this width = width
        this height = height
        this
    }
}

operator == (left , right : FloatRect) -> Bool {
    (left top == right top && left left == right left && left width == right width && left height == right height)
}

operator != (left , right : FloatRect) -> Bool {
    !(left == right)
}

IntRect: cover from sfIntRect {
    zero : const static IntRect = IntRect new(0,0,0,0) 
    
    left: extern Int
    top: extern Int
    width: extern Int
    height: extern Int
    
    contains?: func(x,y : Int) -> Bool {
        (x >= left && x <= left+width && y >= top && y <= top+height)
    }
    
    intersection: func(other: IntRect) -> IntRect {
        if(other contains?(left,top)) {
            return IntRect new(left,top,other left + other width - left, other height + other top - top)
        }
        else if(other contains?(left+width,top+height)) {
            return IntRect new(other left, other top, left + width - other left, height + top - other top)
        }
        else if(other contains?(left+width,top)) {
            return IntRect new(other left, top, left + width - other left, other height + other top - top)
        }
        else if(other contains?(left,top+height)) {
            return IntRect new(left, other top, other left + other width - left, height + top - other top)
        }
        IntRect zero
    }
    //contains? : extern(sfIntRect_contains) func(x,y : Int) -> Bool
    //intersects? : extern(sfIntRect_intersects) func(rect2,intersection : IntRect) -> Bool

    new : static func (.left, .top, .width, .height) -> This {
        this: IntRect
        this left = left
        this top = top
        this width = width
        this height = height
        this
    }
}

operator == (left , right : IntRect) -> Bool {
    (left top == right top && left left == right left && left width == right width && left height == right height)
}

operator != (left , right : IntRect) -> Bool {
    !(left == right)
}

Color: cover from sfColor {
    r: extern UInt8
    g: extern UInt8
    b: extern UInt8
    a: extern UInt8
    
    Black: extern(sfBlack) static const This
    White: extern(sfWhite) static const This
    Red: extern(sfRed) static const This
    Green: extern(sfGreen) static const This
    Blue: extern(sfBlue) static const This
    Yellow: extern(sfYellow) static const This
    Magenta: extern(sfMagenta) static const This
    Cyan: extern(sfCyan) static const This
    
    new: extern(sfColor_fromRGB) static func ~rGB (red: UInt8, green: UInt8, blue: UInt8) -> Color
    new: extern(sfColor_fromRGBA) static func ~rGBA (red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) -> Color
    add: extern(sfColor_add) func (color2: Color) -> Color
    modulate: extern(sfColor_modulate) func (color2: Color) -> Color
}

operator + (left,right : Color) -> Color {
    left add(right)
}

operator * (left,right : Color) -> Color {
    left modulate(right)
}

Context: cover from sfContext* {
    new: extern(sfContext_Create) static func -> Context
    destroy: extern(sfContext_Destroy) func
    setActive: extern(sfContext_SetActive) func (active: Bool)
}

Font: cover from sfFont* {
    new: extern(sfFont_createFromFile) static func ~fileCharPtr (filename: Char*) -> This
    new: static func ~fileStr (filename: String) -> This {
        new(filename toCString())
    }
    new: extern(sfFont_createFromMemory) static func ~mem (data: Void*, sizeInButes: SizeT) -> This
    copy: extern(sfFont_copy) func -> This
    destroy: extern(sfFont_destroy) func
    getGlyph: extern(sfFont_getGlyph) func(codePoint: UInt32, characterSize: UInt, bold: Bool) -> Glyph
    getKerning: extern(sfFont_getKerning) func(first,second: UInt32, characterSize: UInt) -> Int
    getLineSpacing: extern(sfFont_getLineSpacing) func(characterSize: UInt) -> Int
    getImage: extern(sfFont_getImage) func(characterSize: UInt) -> Image
    getDefault: extern(sfFont_getDefaultFont) static func -> This
}

Glyph: cover from sfGlyph {
    advance: extern(Advance) Int
    bounds: extern(Bounds) IntRect
    subRect: extern(SubRect) IntRect
}

Image: cover from sfImage* {
    new: extern(sfImage_createFromColor) static func ~fromColor (width: UInt, height: UInt, color: Color) -> This
    new: extern(sfImage_createFromPixels) static func ~fromPixels (width: UInt, height: UInt, data: UInt8*) -> This
    new: extern(sfImage_createFromFile) static func ~fromFileCharPTr (filename: Char*) -> This
    new: static func ~fromFileStr (str: String) -> This {
        new(str toCString())
    }
    new: extern(sfImage_createFromMemory) static func ~fromMemory (data: Char*, sizeInBytes: SizeT) -> This
    destroy: extern(sfImage_destroy) func
    saveToFile: extern(sfImage_saveToFile) func ~CharPtr (filename: Char*) -> Bool
    saveToFile: func ~str (str: String) -> Bool {
        saveToFile(str toCString())
    }
    createMaskFromColor: extern(sfImage_createMaskFromColor) func (colorKey: Color, alpha: UInt8)
    copy: extern(sfImage_copy) func -> Image
    copyImage: extern(sfImage_copyImage) func (source: Image, destX: UInt, destY: UInt, sourceRect: IntRect)
    setPixel: extern(sfImage_setPixel) func (x: UInt, y: UInt, color: Color)
    getPixel: extern(sfImage_getPixel) func (x: UInt, y: UInt) -> Color
    getPixelsPtr: extern(sfImage_getPixelsPtr) func -> UInt8*
    updatePixels: extern(sfImage_updatePixels) func(pixels : UInt8*, rectangle : IntRect)
    bind: extern(sfImage_bind) func
    setSmooth: extern(sfImage_setSmooth) func (smooth: Bool)
    getWidth: extern(sfImage_getWidth) func -> UInt
    getHeight: extern(sfImage_getHeight) func -> UInt
    smooth?: extern(sfImage_isSmooth) func -> Bool
}

Shader: cover from sfShader* {
    new: extern(sfShader_createFromFile) static func ~fromFileCharPtr (vertexShaderFileName, fragmentShaderFileName: CString) -> This
    new: extern(sfShader_createFromMemory) static func ~fromMemory (vertexShader, fragmentShader: CString) -> This
    copy: extern(sfShader_copy) func -> This
    destroy: extern(sfShader_destroy) func
    setFloatParameter: extern(sfShader_setFloatParameter) func ~c (name: CString, x: Float)
    setFloat2Parameter: extern(sfShader_setFloat2Parameter) func ~c (name: CString, x: Float, y: Float)
    setFloat3Parameter: extern(sfShader_setFloat3Parameter) func ~c (name: CString, x: Float, y: Float, z: Float)
    setFloat4Parameter: extern(sfShader_setFloat4Parameter) func ~c (name: CString, x: Float, y: Float, z: Float, w: Float)
    bind: extern(sfShader_bind) func
    unbind: extern(sfShader_unbind) func
    available?: extern(sfShader_isAvailable) func -> Bool
}

RenderStates: cover from sfRenderStates* {
    blendMode: extern BlendMode 
    //transform: extern Transform
    //texture: extern Texture
    shader: extern Shader
}

RenderWindow: cover from sfRenderWindow* {
    new: extern(sfRenderWindow_create) static func ~allParams(mode: VideoMode, title: Char*, style: ULong, params: ContextSettings*) -> RenderWindow
    new: static func ~noSettings(mode: VideoMode, title: Char*, style: ULong) -> RenderWindow {
        new(mode,title,style,null)
    }
    new: static func ~noStyleAndSettingsCharPtr(mode: VideoMode, title: Char*) -> RenderWindow {
        new(mode,title,Style default)
    }
    new: static func ~noStyleAndSettingsStr(mode: VideoMode, title: String) -> RenderWindow {
        new(mode,title toCString())
    }
    new: extern(sfRenderWindow_createFromHandle) static func ~fromHandle (handle: WindowHandle, params: ContextSettings) -> RenderWindow
    destroy: extern(sfRenderWindow_destroy) func
    close: extern(sfRenderWindow_close) func
    open?: extern(sfRenderWindow_isOpen) func -> Bool
    getSize: extern(sfRenderWindow_getSize) func -> UInt
    getSettings: extern(sfRenderWindow_getSettings) func -> ContextSettings
    pollEvent: extern(sfRenderWindow_pollEvent) func (event: Event*) -> Bool
    waitEvent: extern(sfRenderWindow_waitEvent) func(event: Event*) -> Bool
    enableVerticalSync: extern(sfRenderWindow_enableVerticalSync) func (enabled: Bool)
    showMouseCursor: extern(sfRenderWindow_showMouseCursor) func (show: Bool)
    setCursorPosition: extern(sfRenderWindow_setCursorPosition) func (left: UInt, top: UInt)
    setPosition: extern(sfRenderWindow_setPosition) func (left: Int, top: Int)
    setSize: extern(sfRenderWindow_setSize) func (width: UInt, height: UInt)
    setTitle: extern(sfRenderWindow_setTitle) func ~charPtr (Char*)
    setTitle: func ~str (str: String) {
        setTitle(str toCString())
    }
    show: extern(sfRenderWindow_show) func (state: Bool)
    enableKeyRepeat: extern(sfRenderWindow_enableKeyRepeat) func (enabled: Bool)
    setIcon: extern(sfRenderWindow_setIcon) func (width: UInt, height: UInt, pixels: UInt8*)
    setActive: extern(sfRenderWindow_setActive) func (active: Bool) -> Bool
    saveGLStates: extern(sfRenderWindow_saveGLStates) func
    restoreGLStates: extern(sfRenderWindow_restoreGLStates) func
    display: extern(sfRenderWindow_display) func
    setFramerateLimit: extern(sfRenderWindow_setFramerateLimit) func (limit: UInt)
    getFrameTime: extern(sfRenderWindow_getFrameTime) func -> UInt32
    setJoystickThreshold: extern(sfRenderWindow_setJoystickThreshold) func (threshold: Float)
    getSystemHandle: extern(sfRenderWindow_getSystemHandle) func -> WindowHandle
    clear: extern(sfRenderWindow_clear) func (color: Color)
    setView: extern(sfRenderWindow_setView) func (view: View)
    getView: extern(sfRenderWindow_getView) func -> View
    getDefaultView: extern(sfRenderWindow_getDefaultView) func -> View
    getViewport: extern(sfRenderWindow_getViewport) func(View) -> IntRect
    convertCoords: extern(sfRenderWindow_convertCoords) func (windowX: UInt, windowY: UInt, viewX: Float*, viewY: Float*, targetView: View)

    draw: extern(sfRenderWindow_drawSprite) func ~sprite (sprite: Sprite, renderStates: RenderStates)
    draw: extern(sfRenderWindow_drawShape) func ~shape (shape: Shape, renderStates: RenderStates)
    draw: extern(sfRenderWindow_drawText) func ~text (text: Text, renderStates: RenderStates)

    clear: func ~defaultColor {
      this clear(Color Black)
    }
}

Shape: cover from sfShape* extends Drawable {
    new: extern(sfShape_create) static func -> This
    new: extern(sfShape_createLine) static func ~line (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, thickness: Float, col: Color, outline: Float, outlineCol: Color) -> This
    new: extern(sfShape_createRectangle) static func ~rectangle (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, col: Color, outline: Float, outlineCol: Color) -> This
    new: extern(sfShape_createCircle) static func ~circle (x: Float, y: Float, radius: Float, col: Color, outline: Float, outlineCol: Color) -> This
    copy: extern(sfShape_copy) func -> This
    destroy: extern(sfShape_destroy) func
    setX: extern(sfShape_setX) func (x: Float)
    setY: extern(sfShape_setY) func (y: Float)
    setPosition: extern(sfShape_setPosition) func (x: Float, y: Float)
    setScaleX: extern(sfShape_setScaleX) func (scale: Float)
    setScaleY: extern(sfShape_setScaleY) func (scale: Float)
    setScale: extern(sfShape_setScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfShape_setRotation) func (rotation: Float)
    setOrigin: extern(sfShape_setOrigin) func (Float,Float)
    setColor: extern(sfShape_setColor) func (color: Color)
    setBlendMode: extern(sfShape_setBlendMode) func (mode: BlendMode)
    getX: extern(sfShape_getX) func -> Float
    getY: extern(sfShape_getY) func -> Float
    getScaleX: extern(sfShape_getScaleX) func -> Float
    getScaleY: extern(sfShape_getScaleY) func -> Float
    getRotation: extern(sfShape_getRotation) func -> Float
    getColor: extern(sfShape_getColor) func -> Color
    getOriginX: extern(sfShape_getOriginX) func -> Float
    getOriginY: extern(sfShape_getOriginY) func -> Float
    getBlendMode: extern(sfShape_getBlendMode) func -> BlendMode
    move: extern(sfShape_move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfShape_scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfShape_rotate) func (angle: Float)
    transformToLocal: extern(sfShape_transformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfShape_transformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    addPoint: extern(sfShape_addPoint) func (x: Float, y: Float, col: Color, outlineCol: Color)
    enableFill: extern(sfShape_enableFill) func (enable: Bool)
    enableOutline: extern(sfShape_enableOutline) func (enable: Bool)
    setOutlineeThickness: extern(sfShape_setOutlineeThickness) func (width: Float)
    getOutlineeThickness: extern(sfShape_getOutlineeThickness) func -> Float
    getPointsCount: extern(sfShape_getPointsCount) func -> UInt
    getPointPosition: extern(sfShape_getPointPosition) func ~pointers(index: UInt, x: Float*, y: Float*)
    getPointColor: extern(sfShape_getPointColor) func (index: UInt) -> Color
    getPointOutlineColor: extern(sfShape_getPointOutlineColor) func (index: UInt) -> Color
    setPointPosition: extern(sfShape_setPointPosition) func ~xy(index: UInt, x: Float, y: Float)
    setPointColor: extern(sfShape_setPointColor) func (index: UInt, color: Color)
    setPointOutlineColor: extern(sfShape_setPointOutlineColor) func (index: UInt, color: Color)
}

Texture: cover from sfTexture* {
    new: extern(sfTexture_create) static func (width, height: Uint) -> Texture
    new: extern(sfTexture_createFromFile) static func (path: CString, area: IntRect*) -> Texture
    // new: static func (path: CString) -> Texture { new(path, null as IntRect*) }
    // TODO: from memory / from stream
}

Sprite: cover from sfSprite* extends Drawable {
    new: extern(sfSprite_create) static func -> Sprite
    copy: extern(sfSprite_copy) func -> Sprite
    destroy: extern(sfSprite_destroy) func
    setX: extern(sfSprite_setX) func (x: Float)
    setY: extern(sfSprite_setY) func (y: Float)
    setTexture: extern(sfSprite_setTexture) func (tex: Texture, resetRect: Bool)
    setPosition: extern(sfSprite_setPosition) func (x: Float, y: Float)
    setScaleX: extern(sfSprite_setScaleX) func (scale: Float)
    setScaleY: extern(sfSprite_setScaleY) func (scale: Float)
    setScale: extern(sfSprite_setScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfSprite_setRotation) func (rotation: Float)
    setOrigin: extern(sfSprite_setOrigin) func (x: Float, y: Float)
    setColor: extern(sfSprite_setColor) func (color: Color)
    setBlendMode: extern(sfSprite_setBlendMode) func (mode: BlendMode)
    getX: extern(sfSprite_getX) func -> Float
    getY: extern(sfSprite_getY) func -> Float
    getScaleX: extern(sfSprite_getScaleX) func -> Float
    getScaleY: extern(sfSprite_getScaleY) func -> Float
    getRotation: extern(sfSprite_getRotation) func -> Float
    getOriginX: extern(sfSprite_getOriginX) func -> Float
    getOriginY: extern(sfSprite_getOriginY) func -> Float
    getColor: extern(sfSprite_getColor) func -> Color
    getBlendMode: extern(sfSprite_getBlendMode) func -> BlendMode
    move: extern(sfSprite_move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfSprite_scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfSprite_rotate) func (angle: Float)
    transformToLocal: extern(sfSprite_transformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfSprite_transformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    setSubRect: extern(sfSprite_setSubRect) func (subRect: IntRect)
    resize: extern(sfSprite_resize) func (width: Float, height: Float)
    flipX: extern(sfSprite_flipX) func (flipped: Bool)
    flipY: extern(sfSprite_flipY) func (flipped: Bool)
    getImage: extern(sfSprite_getImage) func -> Image
    getSubRect: extern(sfSprite_getSubRect) func -> IntRect
    getWidth: extern(sfSprite_getWidth) func -> Float
    getHeight: extern(sfSprite_getHeight) func -> Float
    getPixel: extern(sfSprite_getPixel) func (x: UInt, y: UInt) -> Color
}

TextStyle : cover from sfTextStyle {
    regular: extern(sfTextRegular) static Int
    bold: extern(sfTextBold) static Int
    underlined: extern(sfTextUnderlined) static Int
    italic: extern(sfTextItalic) static Int
}

Text: cover from sfText* extends Drawable {
    new: extern(sfText_create) static func -> Text
    copy: extern(sfText_copy) func -> Text
    destroy: extern(sfText_destroy) func
    setX: extern(sfText_setX) func (x: Float)
    setY: extern(sfText_setY) func (y: Float)
    setPosition: extern(sfText_setPosition) func (left: Float, top: Float)
    setScaleX: extern(sfText_setScaleX) func (scale: Float)
    setScaleY: extern(sfText_setScaleY) func (scale: Float)
    setScale: extern(sfText_setScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfText_setRotation) func (rotation: Float)
    setOrigin: extern(sfText_setOrigin) func (x: Float, y: Float)
    setColor: extern(sfText_setColor) func (color: Color)
    setBlendMode: extern(sfText_setBlendMode) func (mode: BlendMode)
    getX: extern(sfText_getX) func -> Float
    getY: extern(sfText_getY) func -> Float
    getScaleX: extern(sfText_getScaleX) func -> Float
    getScaleY: extern(sfText_getScaleY) func -> Float
    getRotation: extern(sfText_getRotation) func -> Float
    getOriginX: extern(sfText_getOriginX) func -> Float
    getOriginY: extern(sfText_getOriginY) func -> Float
    getColor: extern(sfText_getColor) func -> Color
    getBlendMode: extern(sfText_getBlendMode) func -> BlendMode
    move: extern(sfText_move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfText_scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfText_rotate) func (angle: Float)
    transformToLocal: extern(sfText_transformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfText_transformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    setString: extern(sfText_setString) func ~c (string: Char*)
    setString: func ~s (str: String) {
        setString(str toCString())
    }
    setUnicodeString: extern(sfText_setUnicodeString) func (string: UInt32*)
    setFont: extern(sfText_setFont) func (font: Font)
    setCharacterSize: extern(sfText_setCharacterSize) func (size: UInt)
    setStyle: extern(sfText_setStyle) func (style: ULong)
    getUnicodeString: extern(sfText_getUnicodeString) func -> UInt32*
    getString: extern(sfText_getString) func ~c -> Char*
    getString: func ~s -> String {
        String new(getString~c())
    }
    getFont: extern(sfText_getFont) func -> Font
    getCharacterSize: extern(sfText_getCharacterSize) func -> UInt
    getStyle: extern(sfText_getStyle) func -> ULong
    getCharacterPos: extern(sfText_getCharacterPos) func (index: SizeT, x: Float*, y: Float*)
    getRect: extern(sfText_getRect) func -> FloatRect
}

View: cover from sfView* {
    new: extern(sfView_create) static func -> View
    new: extern(sfView_createFromRect) static func ~fromRect (rect: FloatRect) -> View
    copy: extern(sfView_copy) func -> View
    destroy: extern(sfView_destroy) func
    setCenter: extern(sfView_setCenter) func (x: Float, y: Float)
    setSize: extern(sfView_setSize) func (width,height : Float)
    setRotation: extern(sfView_setRotation) func (angle : Float)
    setViewport: extern(sfView_setViewport) func(viewport : FloatRect)
    reset: extern(sfView_reset) func(rectangle : FloatRect)
    getCenterX: extern(sfView_getCenterX) func -> Float
    getCenterY: extern(sfView_getCenterY) func -> Float
    getWidth: extern(sfView_getWidth) func -> Float
    getHeight: extern(sfView_getHeight) func -> Float
    getRotation: extern(sfView_getRotation) func -> Float
    getViewport: extern(sfView_getViewport) func -> FloatRect
    rotate: extern(sfView_rotate) func(angle : Float)
    move: extern(sfView_move) func (offsetX: Float, offsetY: Float)
    zoom: extern(sfView_zoom) func (factor: Float)
}

sleep: extern(sfSleep) func (duration: Float)

