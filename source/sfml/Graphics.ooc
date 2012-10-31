import sfml/Windows
import sfml/Drawable
import sfml/RenderTarget

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
    
    intersection: func(other : IntRect) -> IntRect {
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
    setTexture: extern(sfShader_setTexture) func (name: Char*, texture: Image)
    setCurrentTexture: extern(sfShader_setCurrentTexture) func (name: Char*)
    bind: extern(sfShader_bind) func
    unbind: extern(sfShader_unbind) func
    available?: extern(sfShader_isAvailable) func -> Bool
}

RenderWindow: cover from sfRenderWindow* extends RenderTarget {
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

    draw: extern(sfRenderWindow_drawSprite) func ~sprite (sprite: Sprite)
    draw: extern(sfRenderWindow_drawShape) func ~shape (shape: Shape)
    draw: extern(sfRenderWindow_drawText) func ~text (text: Text)
    
    draw: extern(sfRenderWindow_drawSprite) func ~spriteShader (sprite: Sprite, shader : Shader)
    draw: extern(sfRenderWindow_drawShape) func ~shapeShader (shape: Shape, shader : Shader)
    draw: extern(sfRenderWindow_drawText) func ~textShader (text: Text, shader : Shader)
}

Shape: cover from sfShape* extends Drawable {
    new: extern(sfShape_Create) static func -> This
    new: extern(sfShape_CreateLine) static func ~line (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, thickness: Float, col: Color, outline: Float, outlineCol: Color) -> This
    new: extern(sfShape_CreateRectangle) static func ~rectangle (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, col: Color, outline: Float, outlineCol: Color) -> This
    new: extern(sfShape_CreateCircle) static func ~circle (x: Float, y: Float, radius: Float, col: Color, outline: Float, outlineCol: Color) -> This
    copy: extern(sfShape_Copy) func -> This
    destroy: extern(sfShape_Destroy) func
    setX: extern(sfShape_SetX) func (x: Float)
    setY: extern(sfShape_SetY) func (y: Float)
    setPosition: extern(sfShape_SetPosition) func (x: Float, y: Float)
    setScaleX: extern(sfShape_SetScaleX) func (scale: Float)
    setScaleY: extern(sfShape_SetScaleY) func (scale: Float)
    setScale: extern(sfShape_SetScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfShape_SetRotation) func (rotation: Float)
    setOrigin: extern(sfShape_SetOrigin) func (Float,Float)
    setColor: extern(sfShape_SetColor) func (color: Color)
    setBlendMode: extern(sfShape_SetBlendMode) func (mode: BlendMode)
    getX: extern(sfShape_GetX) func -> Float
    getY: extern(sfShape_GetY) func -> Float
    getScaleX: extern(sfShape_GetScaleX) func -> Float
    getScaleY: extern(sfShape_GetScaleY) func -> Float
    getRotation: extern(sfShape_GetRotation) func -> Float
    getColor: extern(sfShape_GetColor) func -> Color
    getOriginX: extern(sfShape_GetOriginX) func -> Float
    getOriginY: extern(sfShape_GetOriginY) func -> Float
    getBlendMode: extern(sfShape_GetBlendMode) func -> BlendMode
    move: extern(sfShape_Move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfShape_Scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfShape_Rotate) func (angle: Float)
    transformToLocal: extern(sfShape_TransformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfShape_TransformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    addPoint: extern(sfShape_AddPoint) func (x: Float, y: Float, col: Color, outlineCol: Color)
    enableFill: extern(sfShape_EnableFill) func (enable: Bool)
    enableOutline: extern(sfShape_EnableOutline) func (enable: Bool)
    setOutlineeThickness: extern(sfShape_SetOutlineeThickness) func (width: Float)
    getOutlineeThickness: extern(sfShape_GetOutlineeThickness) func -> Float
    getPointsCount: extern(sfShape_GetPointsCount) func -> UInt
    getPointPosition: extern(sfShape_GetPointPosition) func ~pointers(index: UInt, x: Float*, y: Float*)
    getPointColor: extern(sfShape_GetPointColor) func (index: UInt) -> Color
    getPointOutlineColor: extern(sfShape_GetPointOutlineColor) func (index: UInt) -> Color
    setPointPosition: extern(sfShape_SetPointPosition) func ~xy(index: UInt, x: Float, y: Float)
    setPointColor: extern(sfShape_SetPointColor) func (index: UInt, color: Color)
    setPointOutlineColor: extern(sfShape_SetPointOutlineColor) func (index: UInt, color: Color)
}

Sprite: cover from sfSprite* extends Drawable {
    new: extern(sfSprite_Create) static func -> Sprite
    new: static func ~withImage(img : Image) -> Sprite {
        this := new()
        this setImage(img)
        this
    }
    copy: extern(sfSprite_Copy) func -> Sprite
    destroy: extern(sfSprite_Destroy) func
    setX: extern(sfSprite_SetX) func (x: Float)
    setY: extern(sfSprite_SetY) func (y: Float)
    setPosition: extern(sfSprite_SetPosition) func (x: Float, y: Float)
    setScaleX: extern(sfSprite_SetScaleX) func (scale: Float)
    setScaleY: extern(sfSprite_SetScaleY) func (scale: Float)
    setScale: extern(sfSprite_SetScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfSprite_SetRotation) func (rotation: Float)
    setOrigin: extern(sfSprite_SetOrigin) func (x: Float, y: Float)
    setColor: extern(sfSprite_SetColor) func (color: Color)
    setBlendMode: extern(sfSprite_SetBlendMode) func (mode: BlendMode)
    getX: extern(sfSprite_GetX) func -> Float
    getY: extern(sfSprite_GetY) func -> Float
    getScaleX: extern(sfSprite_GetScaleX) func -> Float
    getScaleY: extern(sfSprite_GetScaleY) func -> Float
    getRotation: extern(sfSprite_GetRotation) func -> Float
    getOriginX: extern(sfSprite_GetOriginX) func -> Float
    getOriginY: extern(sfSprite_GetOriginY) func -> Float
    getColor: extern(sfSprite_GetColor) func -> Color
    getBlendMode: extern(sfSprite_GetBlendMode) func -> BlendMode
    move: extern(sfSprite_Move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfSprite_Scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfSprite_Rotate) func (angle: Float)
    transformToLocal: extern(sfSprite_TransformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfSprite_TransformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    setImage: extern(sfSprite_SetImage) func ~withbool(image: Image , adjustToNewSize : Bool)
    setImage : func ~withoutbool(image : Image) { setImage(image,true) }
    setSubRect: extern(sfSprite_SetSubRect) func (subRect: IntRect)
    resize: extern(sfSprite_Resize) func (width: Float, height: Float)
    flipX: extern(sfSprite_FlipX) func (flipped: Bool)
    flipY: extern(sfSprite_FlipY) func (flipped: Bool)
    getImage: extern(sfSprite_GetImage) func -> Image
    getSubRect: extern(sfSprite_GetSubRect) func -> IntRect
    getWidth: extern(sfSprite_GetWidth) func -> Float
    getHeight: extern(sfSprite_GetHeight) func -> Float
    getPixel: extern(sfSprite_GetPixel) func (x: UInt, y: UInt) -> Color
}

TextStyle : cover from sfTextStyle {
    regular: extern(sfTextRegular) static Int
    bold: extern(sfTextBold) static Int
    underlined: extern(sfTextUnderlined) static Int
    italic: extern(sfTextItalic) static Int
}

Text: cover from sfText* extends Drawable {
    new: extern(sfText_Create) static func -> Text
    copy: extern(sfText_Copy) func -> Text
    destroy: extern(sfText_Destroy) func
    setX: extern(sfText_SetX) func (x: Float)
    setY: extern(sfText_SetY) func (y: Float)
    setPosition: extern(sfText_SetPosition) func (left: Float, top: Float)
    setScaleX: extern(sfText_SetScaleX) func (scale: Float)
    setScaleY: extern(sfText_SetScaleY) func (scale: Float)
    setScale: extern(sfText_SetScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfText_SetRotation) func (rotation: Float)
    setOrigin: extern(sfText_SetOrigin) func (x: Float, y: Float)
    setColor: extern(sfText_SetColor) func (color: Color)
    setBlendMode: extern(sfText_SetBlendMode) func (mode: BlendMode)
    getX: extern(sfText_GetX) func -> Float
    getY: extern(sfText_GetY) func -> Float
    getScaleX: extern(sfText_GetScaleX) func -> Float
    getScaleY: extern(sfText_GetScaleY) func -> Float
    getRotation: extern(sfText_GetRotation) func -> Float
    getOriginX: extern(sfText_GetOriginX) func -> Float
    getOriginY: extern(sfText_GetOriginY) func -> Float
    getColor: extern(sfText_GetColor) func -> Color
    getBlendMode: extern(sfText_GetBlendMode) func -> BlendMode
    move: extern(sfText_Move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfText_Scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfText_Rotate) func (angle: Float)
    transformToLocal: extern(sfText_TransformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfText_TransformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    setString: extern(sfText_SetString) func ~c (string: Char*)
    setString: func ~s (str: String) {
        setString(str toCString())
    }
    setUnicodeString: extern(sfText_SetUnicodeString) func (string: UInt32*)
    setFont: extern(sfText_SetFont) func (font: Font)
    setCharacterSize: extern(sfText_SetCharacterSize) func (size: UInt)
    setStyle: extern(sfText_SetStyle) func (style: ULong)
    getUnicodeString: extern(sfText_GetUnicodeString) func -> UInt32*
    getString: extern(sfText_GetString) func ~c -> Char*
    getString: func ~s -> String {
        String new(getString~c())
    }
    getFont: extern(sfText_GetFont) func -> Font
    getCharacterSize: extern(sfText_GetCharacterSize) func -> UInt
    getStyle: extern(sfText_GetStyle) func -> ULong
    getCharacterPos: extern(sfText_GetCharacterPos) func (index: SizeT, x: Float*, y: Float*)
    getRect: extern(sfText_GetRect) func -> FloatRect
}

View: cover from sfView* {
    new: extern(sfView_Create) static func -> View
    new: extern(sfView_CreateFromRect) static func ~fromRect (rect: FloatRect) -> View
    copy: extern(sfView_Copy) func -> View
    destroy: extern(sfView_Destroy) func
    setCenter: extern(sfView_SetCenter) func (x: Float, y: Float)
    setSize: extern(sfView_SetSize) func (width,height : Float)
    setRotation: extern(sfView_SetRotation) func (angle : Float)
    setViewport: extern(sfView_SetViewport) func(viewport : FloatRect)
    reset: extern(sfView_Reset) func(rectangle : FloatRect)
    getCenterX: extern(sfView_GetCenterX) func -> Float
    getCenterY: extern(sfView_GetCenterY) func -> Float
    getWidth: extern(sfView_GetWidth) func -> Float
    getHeight: extern(sfView_GetHeight) func -> Float
    getRotation: extern(sfView_GetRotation) func -> Float
    getViewport: extern(sfView_GetViewport) func -> FloatRect
    rotate: extern(sfView_Rotate) func(angle : Float)
    move: extern(sfView_Move) func (offsetX: Float, offsetY: Float)
    zoom: extern(sfView_Zoom) func (factor: Float)
}

sleep: extern(sfSleep) func (duration: Float)

