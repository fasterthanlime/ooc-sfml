import sfml/Windows

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
    left: extern(Left) Float
    top: extern(Top) Float
    width: extern(Width) Float
    height: extern(Height) Float
    contains? : extern(sfFloatRect_Contains) func(x,y : Float) -> Bool
    intersects? : extern(sfFloatRect_Intersects) func(rect2,intersection : FloatRect) -> Bool
//    offset: extern(sfFloatRect_Offset) func (offsetX: Float, offsetY: Float)
//    contains: extern(sfFloatRect_Contains) func (x: Float, y: Float) -> Bool
//    intersects: extern(sfFloatRect_Intersects) func (rect2: FloatRect, overlappingRect: FloatRect) -> Bool

    new : static func (.left, .top, .width, .height) -> This {
        this: FloatRect
        this left = left
        this top = top
        this width = width
        this height = height
        this
    }
}

IntRect: cover from sfIntRect {
    left: extern(Left) Int
    top: extern(Top) Int
    width: extern(Width) Int
    height: extern(Height) Int
    contains? : extern(sfIntRect_Contains) func(x,y : Int) -> Bool
    intersects? : extern(sfIntRect_Intersects) func(rect2,intersection : IntRect) -> Bool
//    offset: extern(IntRect_Offset) func (offsetX: Int, offsetY: Int)
//    contains: extern(IntRect_Contains) func (x: Int, y: Int) -> Bool
//    intersects: extern(IntRect_Intersects) func (rect2: IntRect, overlappingRect: IntRect) -> Bool

    new : static func (.left, .top, .width, .height) -> This {
        this: IntRect
        this left = left
        this top = top
        this width = width
        this height = height
        this
    }
}

Color: cover from sfColor {
    r: extern UInt8
    g: extern UInt8
    b: extern UInt8
    a: extern UInt8
    
    new: extern(sfColor_FromRGB) static func ~rGB (red: UInt8, green: UInt8, blue: UInt8) -> Color
    new: extern(sfColor_FromRGBA) static func ~rGBA (red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) -> Color
    add: extern(sfColor_Add) func (color2: Color) -> Color
    modulate: extern(sfColor_Modulate) func (color2: Color) -> Color
}

Context: cover from sfContext* {
    new: extern(sfContext_Create) static func -> Context
    destroy: extern(sfContext_Destroy) func
    setActive: extern(sfContext_SetActive) func (active: Bool)
}

Font: cover from sfFont* {
    new: extern(sfFont_CreateFromFile) static func ~file (filename: Char*) -> Font
    new: extern(sfFont_CreateFromMemory) static func ~mem (data: Void*, sizeInButes: SizeT) -> Font
    copy: extern(sfFont_Copy) func -> Font
    destroy: extern(sfFont_Destroy) func
    getGlyph: extern(sfFont_GetGlyph) func(codePoint: UInt32, characterSize: UInt, bold: Bool) -> Glyph
    getKerning: extern(sfFont_GetKerning) func(first,second: UInt32, characterSize: UInt) -> Int
    getLineSpacing: extern(sfFont_GetLineSpacing) func(characterSize: UInt) -> Int
    getImage: extern(sfFont_GetImage) func(characterSize: UInt) -> Image
}
getDefaultFont: extern(sfFont_GetDefaultFont) static func -> Font

Glyph: cover from sfGlyph {
    advance: extern(Advance) Int
    bounds: extern(Bounds) IntRect
    subRect: extern(SubRect) IntRect
}

Image: cover from sfImage* {
    new: extern(sfImage_CreateFromColor) static func ~fromColor (width: UInt, height: UInt, color: Color) -> Image
    new: extern(sfImage_CreateFromPixels) static func ~fromPixels (width: UInt, height: UInt, data: UInt8*) -> Image
    new: extern(sfImage_CreateFromFile) static func ~fromFile (filename: Char*) -> Image
    new: extern(sfImage_CreateFromMemory) static func ~fromMemory (data: Char*, sizeInBytes: SizeT) -> Image
    destroy: extern(sfImage_Destroy) func
    saveToFile: extern(sfImage_SaveToFile) func (filename: Char*) -> Bool
    createMaskFromColor: extern(sfImage_CreateMaskFromColor) func (colorKey: Color, alpha: UInt8)
    copy: extern(sfImage_Copy) func -> Image
    copyImage: extern(sfImage_CopyImage) func (source: Image, destX: UInt, destY: UInt, sourceRect: IntRect)
    copyScreen: extern(sfImage_CopyScreen) func (window: RenderWindow, sourceRect: IntRect) -> Bool
    setPixel: extern(sfImage_SetPixel) func (x: UInt, y: UInt, color: Color)
    getPixel: extern(sfImage_GetPixel) func (x: UInt, y: UInt) -> Color
    getPixelsPtr: extern(sfImage_GetPixelsPtr) func -> UInt8*
    updatePixels: extern(sfImage_UpdatePixels) func(pixels : UInt8*, rectangle : IntRect)
    bind: extern(sfImage_Bind) func
    setSmooth: extern(sfImage_SetSmooth) func (smooth: Bool)
    getWidth: extern(sfImage_GetWidth) func -> UInt
    getHeight: extern(sfImage_GetHeight) func -> UInt
    isSmooth: extern(sfImage_IsSmooth) func -> Bool
}

RenderImage : cover from sfRenderImage* {
    new: extern(sfRenderImage_Create) static func (width,height : UInt, depthBuffer : Bool) -> RenderImage
    destroy: extern(sfRenderImage_Destroy) func
    getWidth: extern(sfRenderImage_GetWidth) func -> Int
    getHeight: extern(sfRenderImage_GetHeight) func -> Int
    setActive: extern(sfRenderImage_SetActive) func(active : Bool)
    saveGLStates: extern(sfRenderImage_SaveGLStates) func
    restoreGLStates: extern(sfRenderImage_RestoreGLStates) func
    display: extern(sfRenderImage_Display) func
    
    draw: extern(sfRenderImage_DrawSprite) func ~sprite(sprite : Sprite)
    draw: extern(sfRenderImage_DrawShape) func ~shape(shape : Shape)
    draw: extern(sfRenderImage_DrawText) func ~text(text : Text)
    
    drawWithShader: extern(sfRenderImage_DrawSpriteWithShader) func ~sprite(sprite : Sprite, shader : Shader)
    drawWithShader: extern(sfRenderImage_DrawShapeWithShader) func ~shape(shape : Shape, shader : Shader)
    drawWithShader: extern(sfRenderImage_DrawTextWithShader) func ~text(text : Text, shader : Shader)
    
    clear: extern(sfRenderImage_Clear) func(color : Color)
    setView: extern(sfRenderImage_SetView) func(view : View)
    getView: extern(sfRenderImage_GetView) func -> View
    getViewPort: extern(sfRenderImage_GetViewPort) func -> IntRect
    covertCoords: extern(sfRenderImage_ConvertCoords) func(windowX,windowY : UInt, viewX,viewY : Float*, targetView : View)
    getImage: extern(sfRenderImage_GetImage) func -> Image
    available?: extern(sfRenderImage_IsAvailable) func -> Bool
}

Shader: cover from sfShader* {
    new: extern(sfShader_CreateFromFile) static func ~fromFile (filename: Char*) -> Shader
    new: extern(sfShader_CreateFromMemory) static func ~fromMemory (effect: Char*) -> Shader
    copy: extern(sfShader_Copy) func -> Shader
    destroy: extern(sfShader_Destroy) func
    setParameter1: extern(sfShader_SetParameter1) func (name: Char*, x: Float)
    setParameter2: extern(sfShader_SetParameter2) func (name: Char*, x: Float, y: Float)
    setParameter3: extern(sfShader_SetParameter3) func (name: Char*, x: Float, y: Float, z: Float)
    setParameter4: extern(sfShader_SetParameter4) func (name: Char*, x: Float, y: Float, z: Float, w: Float)
    setTexture: extern(sfShader_SetTexture) func (name: Char*, texture: Image)
    bind: extern(sfShader_Bind) func
    unbind: extern(sfShader_Unbind) func
    available?: extern(sfShader_IsAvailable) func -> Bool
}

RenderWindow: cover from sfRenderWindow* {
    new: extern(sfRenderWindow_Create) static func (mode: VideoMode, title: Char*, style: ULong, params: ContextSettings) -> RenderWindow
    new: extern(sfRenderWindow_CreateFromHandle) static func ~fromHandle (handle: WindowHandle, params: ContextSettings) -> RenderWindow
    destroy: extern(sfRenderWindow_Destroy) func
    close: extern(sfRenderWindow_Close) func
    opened?: extern(sfRenderWindow_IsOpened) func -> Bool
    getWidth: extern(sfRenderWindow_GetWidth) func -> UInt
    getHeight: extern(sfRenderWindow_GetHeight) func -> UInt
    getSettings: extern(sfRenderWindow_GetSettings) func -> ContextSettings
    getEvent: extern(sfRenderWindow_GetEvent) func (event: Event*) -> Bool
    waitEvent: extern(sfRenderWindow_WaitEvent) func(event: Event*) -> Bool
    useVerticalSync: extern(sfRenderWindow_UseVerticalSync) func (enabled: Bool)
    showMouseCursor: extern(sfRenderWindow_ShowMouseCursor) func (show: Bool)
    setCursorPosition: extern(sfRenderWindow_SetCursorPosition) func (left: UInt, top: UInt)
    setPosition: extern(sfRenderWindow_SetPosition) func (left: Int, top: Int)
    setSize: extern(sfRenderWindow_SetSize) func (width: UInt, height: UInt)
    show: extern(sfRenderWindow_Show) func (state: Bool)
    enableKeyRepeat: extern(sfRenderWindow_EnableKeyRepeat) func (enabled: Bool)
    setIcon: extern(sfRenderWindow_SetIcon) func (width: UInt, height: UInt, pixels: UInt8*)
    setActive: extern(sfRenderWindow_SetActive) func (active: Bool) -> Bool
    saveGLStates: extern(sfRenderWindow_SaveGLStates) func
    restoreGLStates: extern(sfRenderWindow_RestoreGLStates) func
    display: extern(sfRenderWindow_Display) func
    getInput: extern(sfRenderWindow_GetInput) func -> Input
    setFramerateLimit: extern(sfRenderWindow_SetFramerateLimit) func (limit: UInt)
    getFrameTime: extern(sfRenderWindow_GetFrameTime) func -> Float
    setJoystickThreshold: extern(sfRenderWindow_SetJoystickThreshold) func (threshold: Float)
    getSystemHandle: extern(sfRenderWindow_GetSystemHandle) func -> WindowHandle
    clear: extern(sfRenderWindow_Clear) func ~withColor (color: Color)
    clear: func ~defaultColor() {
        this clear(Color new(0, 0, 0))
    }
    setView: extern(sfRenderWindow_SetView) func (view: View)
    getView: extern(sfRenderWindow_GetView) func -> View
    getDefaultView: extern(sfRenderWindow_GetDefaultView) func -> View
    convertCoords: extern(sfRenderWindow_ConvertCoords) func (windowX: UInt, windowY: UInt, viewX: Float*, viewY: Float*, targetView: View)

    draw: extern(sfRenderWindow_DrawSprite) func ~sprite (sprite: Sprite)
    draw: extern(sfRenderWindow_DrawShape) func ~shape (shape: Shape)
    draw: extern(sfRenderWindow_DrawText) func ~text (text: Text)
    
    drawWithShader: extern(sfRenderWindow_DrawSprite) func ~sprite (sprite: Sprite, shader : Shader)
    drawWithShader: extern(sfRenderWindow_DrawShape) func ~shape (shape: Shape, shader : Shader)
    drawWithShader: extern(sfRenderWindow_DrawText) func ~text (text: Text, shader : Shader)
}

Shape: cover from sfShape* {
    new: extern(sfShape_Create) static func -> Shape
    new: extern(sfShape_CreateLine) static func ~line (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, thickness: Float, col: Color, outline: Float, outlineCol: Color) -> Shape
    new: extern(sfShape_CreateRectangle) static func ~rectangle (p1X: Float, p1Y: Float, p2X: Float, p2Y: Float, col: Color, outline: Float, outlineCol: Color) -> Shape
    new: extern(sfShape_CreateCircle) static func ~circle (x: Float, y: Float, radius: Float, col: Color, outline: Float, outlineCol: Color) -> Shape
    destroy: extern(sfShape_Destroy) func
    setX: extern(sfShape_SetX) func (x: Float)
    setY: extern(sfShape_SetY) func (y: Float)
    setPosition: extern(sfShape_SetPosition) func (x: Float, y: Float)
    setScaleX: extern(sfShape_SetScaleX) func (scale: Float)
    setScaleY: extern(sfShape_SetScaleY) func (scale: Float)
    setScale: extern(sfShape_SetScale) func (scaleX: Float, scaleY: Float)
    setRotation: extern(sfShape_SetRotation) func (rotation: Float)
    setCenter: extern(sfShape_SetCenter) func (x: Float, y: Float)
    setColor: extern(sfShape_SetColor) func (color: Color)
    setBlendMode: extern(sfShape_SetBlendMode) func (mode: BlendMode)
    getX: extern(sfShape_GetX) func -> Float
    getY: extern(sfShape_GetY) func -> Float
    getScaleX: extern(sfShape_GetScaleX) func -> Float
    getScaleY: extern(sfShape_GetScaleY) func -> Float
    getRotation: extern(sfShape_GetRotation) func -> Float
    getCenterX: extern(sfShape_GetCenterX) func -> Float
    getCenterY: extern(sfShape_GetCenterY) func -> Float
    getColor: extern(sfShape_GetColor) func -> Color
    getBlendMode: extern(sfShape_GetBlendMode) func -> BlendMode
    move: extern(sfShape_Move) func (offsetX: Float, offsetY: Float)
    scale: extern(sfShape_Scale) func (factorX: Float, factorY: Float)
    rotate: extern(sfShape_Rotate) func (angle: Float)
    transformToLocal: extern(sfShape_TransformToLocal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: extern(sfShape_TransformToGlobal) func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    addPoint: extern(sfShape_AddPoint) func (x: Float, y: Float, col: Color, outlineCol: Color)
    enableFill: extern(sfShape_EnableFill) func (enable: Bool)
    enableOutline: extern(sfShape_EnableOutline) func (enable: Bool)
    setOutlineWidth: extern(sfShape_SetOutlineWidth) func (width: Float)
    getOutlineWidth: extern(sfShape_GetOutlineWidth) func -> Float
    getNbPoints: extern(sfShape_GetNbPoints) func -> UInt
    getPointPosition: extern(sfShape_GetPointPosition) func (index: UInt, x: Float*, y: Float*)
    getPointColor: extern(sfShape_GetPointColor) func (index: UInt) -> Color
    getPointOutlineColor: extern(sfShape_GetPointOutlineColor) func (index: UInt) -> Color
    setPointPosition: extern(sfShape_SetPointPosition) func (index: UInt, x: Float, y: Float)
    setPointColor: extern(sfShape_SetPointColor) func (index: UInt, color: Color)
    setPointOutlineColor: extern(sfShape_SetPointOutlineColor) func (index: UInt, color: Color)
}

Sprite: cover from sfSprite* {
    new: extern(sfSprite_Create) static func -> Sprite
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

Text: cover from sfText* {
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
    setString: extern(sfText_SetString) func (string: Char*)
    setUnicodeString: extern(sfText_SetUnicodeString) func (string: UInt32*)
    setFont: extern(sfText_SetFont) func (font: Font)
    setCharacterSize: extern(sfText_SetCharacterSize) func (size: Float)
    setStyle: extern(sfText_SetStyle) func (style: ULong)
    getUnicodeString: extern(sfText_GetUnicodeString) func -> UInt32*
    getString: extern(sfText_GetString) func -> Char*
    getFont: extern(sfText_GetFont) func -> Font
    getCharacterSize: extern(sfText_GetCharacterSize) func -> Float
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

