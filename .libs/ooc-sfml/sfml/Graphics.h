/* sfml/Graphics header file, generated with rock, the ooc compiler written in ooc */

#ifndef ___sfml_Graphics___
#define ___sfml_Graphics___

#include <./sfml/Graphics-fwd.h>
#include <sdk/lang/types.h>

struct _sfml_Graphics__Vector2 {
    struct _lang_types__Object __super__;
    lang_types__Class* T;
    uint8_t* x;
    uint8_t* y;
};


struct _sfml_Graphics__Vector2Class {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__Vector2* (*new)(lang_types__Class*, uint8_t*, uint8_t*);
    void (*init)(sfml_Graphics__Vector2*, uint8_t*, uint8_t*);
};


struct _sfml_Graphics__BlendModeClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__FloatRectClass {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__FloatRect zero;
    lang_types__Bool (*contains__quest)(sfml_Graphics__FloatRect, lang_Numbers__Float, lang_Numbers__Float);
    sfml_Graphics__FloatRect (*intersection)(sfml_Graphics__FloatRect, sfml_Graphics__FloatRect);
    sfml_Graphics__FloatRect (*new)(lang_Numbers__Float, lang_Numbers__Float, lang_Numbers__Float, lang_Numbers__Float);
};


struct _sfml_Graphics__IntRectClass {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__IntRect zero;
    lang_types__Bool (*contains__quest)(sfml_Graphics__IntRect, lang_Numbers__Int, lang_Numbers__Int);
    sfml_Graphics__IntRect (*intersection)(sfml_Graphics__IntRect, sfml_Graphics__IntRect);
    sfml_Graphics__IntRect (*new)(lang_Numbers__Int, lang_Numbers__Int, lang_Numbers__Int, lang_Numbers__Int);
};


struct _sfml_Graphics__ColorClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__ContextClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__FontClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__GlyphClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__ImageClass {
    struct _lang_types__ClassClass __super__;
    lang_types__Bool (*copyScreen_norect)(sfml_Graphics__Image, sfml_Graphics__RenderWindow);
};


struct _sfml_Graphics__RenderImageClass {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__Vector2* (*covertCoords_vec)(sfml_Graphics__RenderImage, sfml_Graphics__Vector2*, sfml_Graphics__View);
};


struct _sfml_Graphics__ShaderClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__RenderWindowClass {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__RenderWindow (*new_noSettings)(sfml_Windows__VideoMode, lang_Character__Char*, lang_Numbers__ULong);
    sfml_Graphics__RenderWindow (*new_noStyleAndSettings)(sfml_Windows__VideoMode, lang_Character__Char*);
    void (*clear_defaultColor)(sfml_Graphics__RenderWindow);
};


struct _sfml_Graphics__ShapeClass {
    struct _lang_types__ClassClass __super__;
    void (*setPosition_vec)(sfml_Graphics__Shape, sfml_Graphics__Vector2*);
    void (*setScale_vec)(sfml_Graphics__Shape, sfml_Graphics__Vector2*);
    void (*setPointPosition_vec)(sfml_Graphics__Shape, lang_Numbers__UInt, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*getScale)(sfml_Graphics__Shape);
    sfml_Graphics__Vector2* (*transformToLocal_vec)(sfml_Graphics__Shape, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*transformToGlobal_vec)(sfml_Graphics__Shape, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*getPointPosition_vec)(sfml_Graphics__Shape, lang_Numbers__UInt);
};


struct _sfml_Graphics__SpriteClass {
    struct _lang_types__ClassClass __super__;
    sfml_Graphics__Sprite (*new_withImage)(sfml_Graphics__Image);
    void (*setImage_withoutbool)(sfml_Graphics__Sprite, sfml_Graphics__Image);
    void (*setPosition_vec)(sfml_Graphics__Sprite, sfml_Graphics__Vector2*);
    void (*setScale_vec)(sfml_Graphics__Sprite, sfml_Graphics__Vector2*);
    void (*setOrigin_vec)(sfml_Graphics__Sprite, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*getScale)(sfml_Graphics__Sprite);
    sfml_Graphics__Vector2* (*getOrgin)(sfml_Graphics__Sprite);
    sfml_Graphics__Vector2* (*transformToLocal_vec)(sfml_Graphics__Sprite, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*transformToGlobal_vec)(sfml_Graphics__Sprite, sfml_Graphics__Vector2*);
};


struct _sfml_Graphics__TextStyleClass {
    struct _lang_types__ClassClass __super__;
};


struct _sfml_Graphics__TextClass {
    struct _lang_types__ClassClass __super__;
    void (*setPosition_vec)(sfml_Graphics__Text, sfml_Graphics__Vector2*);
    void (*setScale_vec)(sfml_Graphics__Text, sfml_Graphics__Vector2*);
    void (*setOrigin_vec)(sfml_Graphics__Text, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*getScale)(sfml_Graphics__Text);
    sfml_Graphics__Vector2* (*getOrgin)(sfml_Graphics__Text);
    sfml_Graphics__Vector2* (*transformToLocal_vec)(sfml_Graphics__Text, sfml_Graphics__Vector2*);
    sfml_Graphics__Vector2* (*transformToGlobal_vec)(sfml_Graphics__Text, sfml_Graphics__Vector2*);
};


struct _sfml_Graphics__ViewClass {
    struct _lang_types__ClassClass __super__;
};


#ifdef OOC_FROM_C
#define getDefaultFont() sfml_Graphics__getDefaultFont()
#define sleep(duration) sfml_Graphics__sleep((duration))
#define Vector2 sfml_Graphics__Vector2
#define Vector2_class() sfml_Graphics__Vector2_class()
#define Vector2Class sfml_Graphics__Vector2Class
#define Vector2Class_class() sfml_Graphics__Vector2Class_class()
#define Vector2_new(T, x, y) (void*) sfml_Graphics__Vector2_new((T), (x), (y))
#define Vector2_init(_this_, x, y) sfml_Graphics__Vector2_init((void*) (_this_), (x), (y))
#define Vector2___defaults__(_this_) sfml_Graphics__Vector2___defaults__((void*) (_this_))
#define Vector2___load__() sfml_Graphics__Vector2___load__()
#define BlendMode sfml_Graphics__BlendMode
#define BlendMode_class() sfml_Graphics__BlendMode_class()
#define BlendModeClass sfml_Graphics__BlendModeClass
#define BlendModeClass_class() sfml_Graphics__BlendModeClass_class()
#define BlendMode___load__() sfml_Graphics__BlendMode___load__()
#define FloatRect sfml_Graphics__FloatRect
#define FloatRect_class() sfml_Graphics__FloatRect_class()
#define FloatRectClass sfml_Graphics__FloatRectClass
#define FloatRectClass_class() sfml_Graphics__FloatRectClass_class()
#define FloatRect_contains__quest(_this_, x, y) sfml_Graphics__FloatRect_contains__quest((void*) (_this_), (x), (y))
#define FloatRect_intersection(_this_, other) sfml_Graphics__FloatRect_intersection((void*) (_this_), (other))
#define FloatRect_new(left, top, width, height) sfml_Graphics__FloatRect_new((left), (top), (width), (height))
#define FloatRect___load__() sfml_Graphics__FloatRect___load__()
#define IntRect sfml_Graphics__IntRect
#define IntRect_class() sfml_Graphics__IntRect_class()
#define IntRectClass sfml_Graphics__IntRectClass
#define IntRectClass_class() sfml_Graphics__IntRectClass_class()
#define IntRect_contains__quest(_this_, x, y) sfml_Graphics__IntRect_contains__quest((void*) (_this_), (x), (y))
#define IntRect_intersection(_this_, other) sfml_Graphics__IntRect_intersection((void*) (_this_), (other))
#define IntRect_new(left, top, width, height) sfml_Graphics__IntRect_new((left), (top), (width), (height))
#define IntRect___load__() sfml_Graphics__IntRect___load__()
#define Color sfml_Graphics__Color
#define Color_class() sfml_Graphics__Color_class()
#define ColorClass sfml_Graphics__ColorClass
#define ColorClass_class() sfml_Graphics__ColorClass_class()
#define Color_new_rGB(red, green, blue) sfml_Graphics__Color_new_rGB((red), (green), (blue))
#define Color_new_rGBA(red, green, blue, alpha) sfml_Graphics__Color_new_rGBA((red), (green), (blue), (alpha))
#define Color_add(_this_, color2) sfml_Graphics__Color_add((void*) (_this_), (color2))
#define Color_modulate(_this_, color2) sfml_Graphics__Color_modulate((void*) (_this_), (color2))
#define Color___load__() sfml_Graphics__Color___load__()
#define Context sfml_Graphics__Context
#define Context_class() sfml_Graphics__Context_class()
#define ContextClass sfml_Graphics__ContextClass
#define ContextClass_class() sfml_Graphics__ContextClass_class()
#define Context_new() sfml_Graphics__Context_new()
#define Context_destroy(_this_) sfml_Graphics__Context_destroy((void*) (_this_))
#define Context_setActive(_this_, active) sfml_Graphics__Context_setActive((void*) (_this_), (active))
#define Context___load__() sfml_Graphics__Context___load__()
#define Font sfml_Graphics__Font
#define Font_class() sfml_Graphics__Font_class()
#define FontClass sfml_Graphics__FontClass
#define FontClass_class() sfml_Graphics__FontClass_class()
#define Font_new_file(filename) sfml_Graphics__Font_new_file((filename))
#define Font_new_mem(data, sizeInButes) sfml_Graphics__Font_new_mem((void*) (data), (sizeInButes))
#define Font_copy(_this_) sfml_Graphics__Font_copy((void*) (_this_))
#define Font_destroy(_this_) sfml_Graphics__Font_destroy((void*) (_this_))
#define Font_getGlyph(_this_, codePoint, characterSize, bold) sfml_Graphics__Font_getGlyph((void*) (_this_), (codePoint), (characterSize), (bold))
#define Font_getKerning(_this_, first, second, characterSize) sfml_Graphics__Font_getKerning((void*) (_this_), (first), (second), (characterSize))
#define Font_getLineSpacing(_this_, characterSize) sfml_Graphics__Font_getLineSpacing((void*) (_this_), (characterSize))
#define Font_getImage(_this_, characterSize) sfml_Graphics__Font_getImage((void*) (_this_), (characterSize))
#define Font___load__() sfml_Graphics__Font___load__()
#define Glyph sfml_Graphics__Glyph
#define Glyph_class() sfml_Graphics__Glyph_class()
#define GlyphClass sfml_Graphics__GlyphClass
#define GlyphClass_class() sfml_Graphics__GlyphClass_class()
#define Glyph___load__() sfml_Graphics__Glyph___load__()
#define Image sfml_Graphics__Image
#define Image_class() sfml_Graphics__Image_class()
#define ImageClass sfml_Graphics__ImageClass
#define ImageClass_class() sfml_Graphics__ImageClass_class()
#define Image_new_fromColor(width, height, color) sfml_Graphics__Image_new_fromColor((width), (height), (color))
#define Image_new_fromPixels(width, height, data) sfml_Graphics__Image_new_fromPixels((width), (height), (data))
#define Image_new_fromFile(filename) sfml_Graphics__Image_new_fromFile((filename))
#define Image_new_fromMemory(data, sizeInBytes) sfml_Graphics__Image_new_fromMemory((data), (sizeInBytes))
#define Image_destroy(_this_) sfml_Graphics__Image_destroy((void*) (_this_))
#define Image_saveToFile(_this_, filename) sfml_Graphics__Image_saveToFile((void*) (_this_), (filename))
#define Image_createMaskFromColor(_this_, colorKey, alpha) sfml_Graphics__Image_createMaskFromColor((void*) (_this_), (colorKey), (alpha))
#define Image_copy(_this_) sfml_Graphics__Image_copy((void*) (_this_))
#define Image_copyImage(_this_, source, destX, destY, sourceRect) sfml_Graphics__Image_copyImage((void*) (_this_), (source), (destX), (destY), (sourceRect))
#define Image_copyScreen_allparams(_this_, window, sourceRect) sfml_Graphics__Image_copyScreen_allparams((void*) (_this_), (window), (sourceRect))
#define Image_copyScreen_norect(_this_, window) sfml_Graphics__Image_copyScreen_norect((void*) (_this_), (window))
#define Image_setPixel(_this_, x, y, color) sfml_Graphics__Image_setPixel((void*) (_this_), (x), (y), (color))
#define Image_getPixel(_this_, x, y) sfml_Graphics__Image_getPixel((void*) (_this_), (x), (y))
#define Image_getPixelsPtr(_this_) sfml_Graphics__Image_getPixelsPtr((void*) (_this_))
#define Image_updatePixels(_this_, pixels, rectangle) sfml_Graphics__Image_updatePixels((void*) (_this_), (pixels), (rectangle))
#define Image_bind(_this_) sfml_Graphics__Image_bind((void*) (_this_))
#define Image_setSmooth(_this_, smooth) sfml_Graphics__Image_setSmooth((void*) (_this_), (smooth))
#define Image_getWidth(_this_) sfml_Graphics__Image_getWidth((void*) (_this_))
#define Image_getHeight(_this_) sfml_Graphics__Image_getHeight((void*) (_this_))
#define Image_isSmooth(_this_) sfml_Graphics__Image_isSmooth((void*) (_this_))
#define Image___load__() sfml_Graphics__Image___load__()
#define RenderImage sfml_Graphics__RenderImage
#define RenderImage_class() sfml_Graphics__RenderImage_class()
#define RenderImageClass sfml_Graphics__RenderImageClass
#define RenderImageClass_class() sfml_Graphics__RenderImageClass_class()
#define RenderImage_new(width, height, depthBuffer) sfml_Graphics__RenderImage_new((width), (height), (depthBuffer))
#define RenderImage_destroy(_this_) sfml_Graphics__RenderImage_destroy((void*) (_this_))
#define RenderImage_getWidth(_this_) sfml_Graphics__RenderImage_getWidth((void*) (_this_))
#define RenderImage_getHeight(_this_) sfml_Graphics__RenderImage_getHeight((void*) (_this_))
#define RenderImage_setActive(_this_, active) sfml_Graphics__RenderImage_setActive((void*) (_this_), (active))
#define RenderImage_saveGLStates(_this_) sfml_Graphics__RenderImage_saveGLStates((void*) (_this_))
#define RenderImage_restoreGLStates(_this_) sfml_Graphics__RenderImage_restoreGLStates((void*) (_this_))
#define RenderImage_display(_this_) sfml_Graphics__RenderImage_display((void*) (_this_))
#define RenderImage_draw_sprite(_this_, sprite) sfml_Graphics__RenderImage_draw_sprite((void*) (_this_), (sprite))
#define RenderImage_draw_shape(_this_, shape) sfml_Graphics__RenderImage_draw_shape((void*) (_this_), (shape))
#define RenderImage_draw_text(_this_, text) sfml_Graphics__RenderImage_draw_text((void*) (_this_), (text))
#define RenderImage_drawWithShader_sprite(_this_, sprite, shader) sfml_Graphics__RenderImage_drawWithShader_sprite((void*) (_this_), (sprite), (shader))
#define RenderImage_drawWithShader_shape(_this_, shape, shader) sfml_Graphics__RenderImage_drawWithShader_shape((void*) (_this_), (shape), (shader))
#define RenderImage_drawWithShader_text(_this_, text, shader) sfml_Graphics__RenderImage_drawWithShader_text((void*) (_this_), (text), (shader))
#define RenderImage_clear(_this_, color) sfml_Graphics__RenderImage_clear((void*) (_this_), (color))
#define RenderImage_setView(_this_, view) sfml_Graphics__RenderImage_setView((void*) (_this_), (view))
#define RenderImage_getView(_this_) sfml_Graphics__RenderImage_getView((void*) (_this_))
#define RenderImage_getViewPort(_this_) sfml_Graphics__RenderImage_getViewPort((void*) (_this_))
#define RenderImage_covertCoords_pointer(_this_, windowX, windowY, viewX, viewY, targetView) sfml_Graphics__RenderImage_covertCoords_pointer((void*) (_this_), (windowX), (windowY), (viewX), (viewY), (targetView))
#define RenderImage_getImage(_this_) sfml_Graphics__RenderImage_getImage((void*) (_this_))
#define RenderImage_available__quest(_this_) sfml_Graphics__RenderImage_available__quest((void*) (_this_))
#define RenderImage_covertCoords_vec(_this_, wPoint, targetView) (void*) sfml_Graphics__RenderImage_covertCoords_vec((void*) (_this_), (void*) (wPoint), (targetView))
#define RenderImage___load__() sfml_Graphics__RenderImage___load__()
#define Shader sfml_Graphics__Shader
#define Shader_class() sfml_Graphics__Shader_class()
#define ShaderClass sfml_Graphics__ShaderClass
#define ShaderClass_class() sfml_Graphics__ShaderClass_class()
#define Shader_new_fromFile(filename) sfml_Graphics__Shader_new_fromFile((filename))
#define Shader_new_fromMemory(effect) sfml_Graphics__Shader_new_fromMemory((effect))
#define Shader_copy(_this_) sfml_Graphics__Shader_copy((void*) (_this_))
#define Shader_destroy(_this_) sfml_Graphics__Shader_destroy((void*) (_this_))
#define Shader_setParameter1(_this_, name, x) sfml_Graphics__Shader_setParameter1((void*) (_this_), (name), (x))
#define Shader_setParameter2(_this_, name, x, y) sfml_Graphics__Shader_setParameter2((void*) (_this_), (name), (x), (y))
#define Shader_setParameter3(_this_, name, x, y, z) sfml_Graphics__Shader_setParameter3((void*) (_this_), (name), (x), (y), (z))
#define Shader_setParameter4(_this_, name, x, y, z, w) sfml_Graphics__Shader_setParameter4((void*) (_this_), (name), (x), (y), (z), (w))
#define Shader_setTexture(_this_, name, texture) sfml_Graphics__Shader_setTexture((void*) (_this_), (name), (texture))
#define Shader_bind(_this_) sfml_Graphics__Shader_bind((void*) (_this_))
#define Shader_unbind(_this_) sfml_Graphics__Shader_unbind((void*) (_this_))
#define Shader_available__quest(_this_) sfml_Graphics__Shader_available__quest((void*) (_this_))
#define Shader___load__() sfml_Graphics__Shader___load__()
#define RenderWindow sfml_Graphics__RenderWindow
#define RenderWindow_class() sfml_Graphics__RenderWindow_class()
#define RenderWindowClass sfml_Graphics__RenderWindowClass
#define RenderWindowClass_class() sfml_Graphics__RenderWindowClass_class()
#define RenderWindow_new_allParams(mode, title, style, params) sfml_Graphics__RenderWindow_new_allParams((mode), (title), (style), (params))
#define RenderWindow_new_noSettings(mode, title, style) sfml_Graphics__RenderWindow_new_noSettings((mode), (title), (style))
#define RenderWindow_new_noStyleAndSettings(mode, title) sfml_Graphics__RenderWindow_new_noStyleAndSettings((mode), (title))
#define RenderWindow_new_fromHandle(handle, params) sfml_Graphics__RenderWindow_new_fromHandle((handle), (params))
#define RenderWindow_destroy(_this_) sfml_Graphics__RenderWindow_destroy((void*) (_this_))
#define RenderWindow_close(_this_) sfml_Graphics__RenderWindow_close((void*) (_this_))
#define RenderWindow_opened__quest(_this_) sfml_Graphics__RenderWindow_opened__quest((void*) (_this_))
#define RenderWindow_getWidth(_this_) sfml_Graphics__RenderWindow_getWidth((void*) (_this_))
#define RenderWindow_getHeight(_this_) sfml_Graphics__RenderWindow_getHeight((void*) (_this_))
#define RenderWindow_getSettings(_this_) sfml_Graphics__RenderWindow_getSettings((void*) (_this_))
#define RenderWindow_pollEvent(_this_, event) sfml_Graphics__RenderWindow_pollEvent((void*) (_this_), (event))
#define RenderWindow_waitEvent(_this_, event) sfml_Graphics__RenderWindow_waitEvent((void*) (_this_), (event))
#define RenderWindow_useVerticalSync(_this_, enabled) sfml_Graphics__RenderWindow_useVerticalSync((void*) (_this_), (enabled))
#define RenderWindow_showMouseCursor(_this_, show) sfml_Graphics__RenderWindow_showMouseCursor((void*) (_this_), (show))
#define RenderWindow_setCursorPosition(_this_, left, top) sfml_Graphics__RenderWindow_setCursorPosition((void*) (_this_), (left), (top))
#define RenderWindow_setPosition(_this_, left, top) sfml_Graphics__RenderWindow_setPosition((void*) (_this_), (left), (top))
#define RenderWindow_setSize(_this_, width, height) sfml_Graphics__RenderWindow_setSize((void*) (_this_), (width), (height))
#define RenderWindow_show(_this_, state) sfml_Graphics__RenderWindow_show((void*) (_this_), (state))
#define RenderWindow_enableKeyRepeat(_this_, enabled) sfml_Graphics__RenderWindow_enableKeyRepeat((void*) (_this_), (enabled))
#define RenderWindow_setIcon(_this_, width, height, pixels) sfml_Graphics__RenderWindow_setIcon((void*) (_this_), (width), (height), (pixels))
#define RenderWindow_setActive(_this_, active) sfml_Graphics__RenderWindow_setActive((void*) (_this_), (active))
#define RenderWindow_saveGLStates(_this_) sfml_Graphics__RenderWindow_saveGLStates((void*) (_this_))
#define RenderWindow_restoreGLStates(_this_) sfml_Graphics__RenderWindow_restoreGLStates((void*) (_this_))
#define RenderWindow_display(_this_) sfml_Graphics__RenderWindow_display((void*) (_this_))
#define RenderWindow_getInput(_this_) sfml_Graphics__RenderWindow_getInput((void*) (_this_))
#define RenderWindow_setFramerateLimit(_this_, limit) sfml_Graphics__RenderWindow_setFramerateLimit((void*) (_this_), (limit))
#define RenderWindow_getFrameTime(_this_) sfml_Graphics__RenderWindow_getFrameTime((void*) (_this_))
#define RenderWindow_setJoystickThreshold(_this_, threshold) sfml_Graphics__RenderWindow_setJoystickThreshold((void*) (_this_), (threshold))
#define RenderWindow_getSystemHandle(_this_) sfml_Graphics__RenderWindow_getSystemHandle((void*) (_this_))
#define RenderWindow_clear_withColor(_this_, color) sfml_Graphics__RenderWindow_clear_withColor((void*) (_this_), (color))
#define RenderWindow_clear_defaultColor(_this_) sfml_Graphics__RenderWindow_clear_defaultColor((void*) (_this_))
#define RenderWindow_setView(_this_, view) sfml_Graphics__RenderWindow_setView((void*) (_this_), (view))
#define RenderWindow_getView(_this_) sfml_Graphics__RenderWindow_getView((void*) (_this_))
#define RenderWindow_getDefaultView(_this_) sfml_Graphics__RenderWindow_getDefaultView((void*) (_this_))
#define RenderWindow_convertCoords(_this_, windowX, windowY, viewX, viewY, targetView) sfml_Graphics__RenderWindow_convertCoords((void*) (_this_), (windowX), (windowY), (viewX), (viewY), (targetView))
#define RenderWindow_draw_sprite(_this_, sprite) sfml_Graphics__RenderWindow_draw_sprite((void*) (_this_), (sprite))
#define RenderWindow_draw_shape(_this_, shape) sfml_Graphics__RenderWindow_draw_shape((void*) (_this_), (shape))
#define RenderWindow_draw_text(_this_, text) sfml_Graphics__RenderWindow_draw_text((void*) (_this_), (text))
#define RenderWindow_drawWithShader_sprite(_this_, sprite, shader) sfml_Graphics__RenderWindow_drawWithShader_sprite((void*) (_this_), (sprite), (shader))
#define RenderWindow_drawWithShader_shape(_this_, shape, shader) sfml_Graphics__RenderWindow_drawWithShader_shape((void*) (_this_), (shape), (shader))
#define RenderWindow_drawWithShader_text(_this_, text, shader) sfml_Graphics__RenderWindow_drawWithShader_text((void*) (_this_), (text), (shader))
#define RenderWindow___load__() sfml_Graphics__RenderWindow___load__()
#define Shape sfml_Graphics__Shape
#define Shape_class() sfml_Graphics__Shape_class()
#define ShapeClass sfml_Graphics__ShapeClass
#define ShapeClass_class() sfml_Graphics__ShapeClass_class()
#define Shape_new() sfml_Graphics__Shape_new()
#define Shape_new_line(p1X, p1Y, p2X, p2Y, thickness, col, outline, outlineCol) sfml_Graphics__Shape_new_line((p1X), (p1Y), (p2X), (p2Y), (thickness), (col), (outline), (outlineCol))
#define Shape_new_rectangle(p1X, p1Y, p2X, p2Y, col, outline, outlineCol) sfml_Graphics__Shape_new_rectangle((p1X), (p1Y), (p2X), (p2Y), (col), (outline), (outlineCol))
#define Shape_new_circle(x, y, radius, col, outline, outlineCol) sfml_Graphics__Shape_new_circle((x), (y), (radius), (col), (outline), (outlineCol))
#define Shape_destroy(_this_) sfml_Graphics__Shape_destroy((void*) (_this_))
#define Shape_setX(_this_, x) sfml_Graphics__Shape_setX((void*) (_this_), (x))
#define Shape_setY(_this_, y) sfml_Graphics__Shape_setY((void*) (_this_), (y))
#define Shape_setPosition(_this_, x, y) sfml_Graphics__Shape_setPosition((void*) (_this_), (x), (y))
#define Shape_setScaleX(_this_, scale) sfml_Graphics__Shape_setScaleX((void*) (_this_), (scale))
#define Shape_setScaleY(_this_, scale) sfml_Graphics__Shape_setScaleY((void*) (_this_), (scale))
#define Shape_setScale(_this_, scaleX, scaleY) sfml_Graphics__Shape_setScale((void*) (_this_), (scaleX), (scaleY))
#define Shape_setRotation(_this_, rotation) sfml_Graphics__Shape_setRotation((void*) (_this_), (rotation))
#define Shape_setColor(_this_, color) sfml_Graphics__Shape_setColor((void*) (_this_), (color))
#define Shape_setBlendMode(_this_, mode) sfml_Graphics__Shape_setBlendMode((void*) (_this_), (mode))
#define Shape_getX(_this_) sfml_Graphics__Shape_getX((void*) (_this_))
#define Shape_getY(_this_) sfml_Graphics__Shape_getY((void*) (_this_))
#define Shape_getScaleX(_this_) sfml_Graphics__Shape_getScaleX((void*) (_this_))
#define Shape_getScaleY(_this_) sfml_Graphics__Shape_getScaleY((void*) (_this_))
#define Shape_getRotation(_this_) sfml_Graphics__Shape_getRotation((void*) (_this_))
#define Shape_getColor(_this_) sfml_Graphics__Shape_getColor((void*) (_this_))
#define Shape_getBlendMode(_this_) sfml_Graphics__Shape_getBlendMode((void*) (_this_))
#define Shape_move(_this_, offsetX, offsetY) sfml_Graphics__Shape_move((void*) (_this_), (offsetX), (offsetY))
#define Shape_scale(_this_, factorX, factorY) sfml_Graphics__Shape_scale((void*) (_this_), (factorX), (factorY))
#define Shape_rotate(_this_, angle) sfml_Graphics__Shape_rotate((void*) (_this_), (angle))
#define Shape_transformToLocal(_this_, pointX, pointY, x, y) sfml_Graphics__Shape_transformToLocal((void*) (_this_), (pointX), (pointY), (x), (y))
#define Shape_transformToGlobal(_this_, pointX, pointY, x, y) sfml_Graphics__Shape_transformToGlobal((void*) (_this_), (pointX), (pointY), (x), (y))
#define Shape_addPoint(_this_, x, y, col, outlineCol) sfml_Graphics__Shape_addPoint((void*) (_this_), (x), (y), (col), (outlineCol))
#define Shape_enableFill(_this_, enable) sfml_Graphics__Shape_enableFill((void*) (_this_), (enable))
#define Shape_enableOutline(_this_, enable) sfml_Graphics__Shape_enableOutline((void*) (_this_), (enable))
#define Shape_setOutlineWidth(_this_, width) sfml_Graphics__Shape_setOutlineWidth((void*) (_this_), (width))
#define Shape_getOutlineWidth(_this_) sfml_Graphics__Shape_getOutlineWidth((void*) (_this_))
#define Shape_getNbPoints(_this_) sfml_Graphics__Shape_getNbPoints((void*) (_this_))
#define Shape_getPointPosition_pointers(_this_, index, x, y) sfml_Graphics__Shape_getPointPosition_pointers((void*) (_this_), (index), (x), (y))
#define Shape_getPointColor(_this_, index) sfml_Graphics__Shape_getPointColor((void*) (_this_), (index))
#define Shape_getPointOutlineColor(_this_, index) sfml_Graphics__Shape_getPointOutlineColor((void*) (_this_), (index))
#define Shape_setPointPosition_xy(_this_, index, x, y) sfml_Graphics__Shape_setPointPosition_xy((void*) (_this_), (index), (x), (y))
#define Shape_setPointColor(_this_, index, color) sfml_Graphics__Shape_setPointColor((void*) (_this_), (index), (color))
#define Shape_setPointOutlineColor(_this_, index, color) sfml_Graphics__Shape_setPointOutlineColor((void*) (_this_), (index), (color))
#define Shape_setPosition_vec(_this_, vec) sfml_Graphics__Shape_setPosition_vec((void*) (_this_), (void*) (vec))
#define Shape_setScale_vec(_this_, vec) sfml_Graphics__Shape_setScale_vec((void*) (_this_), (void*) (vec))
#define Shape_setPointPosition_vec(_this_, index, vec) sfml_Graphics__Shape_setPointPosition_vec((void*) (_this_), (index), (void*) (vec))
#define Shape_getScale(_this_) (void*) sfml_Graphics__Shape_getScale((void*) (_this_))
#define Shape_transformToLocal_vec(_this_, point) (void*) sfml_Graphics__Shape_transformToLocal_vec((void*) (_this_), (void*) (point))
#define Shape_transformToGlobal_vec(_this_, point) (void*) sfml_Graphics__Shape_transformToGlobal_vec((void*) (_this_), (void*) (point))
#define Shape_getPointPosition_vec(_this_, index) (void*) sfml_Graphics__Shape_getPointPosition_vec((void*) (_this_), (index))
#define Shape___load__() sfml_Graphics__Shape___load__()
#define Sprite sfml_Graphics__Sprite
#define Sprite_class() sfml_Graphics__Sprite_class()
#define SpriteClass sfml_Graphics__SpriteClass
#define SpriteClass_class() sfml_Graphics__SpriteClass_class()
#define Sprite_new() sfml_Graphics__Sprite_new()
#define Sprite_new_withImage(img) sfml_Graphics__Sprite_new_withImage((img))
#define Sprite_copy(_this_) sfml_Graphics__Sprite_copy((void*) (_this_))
#define Sprite_destroy(_this_) sfml_Graphics__Sprite_destroy((void*) (_this_))
#define Sprite_setX(_this_, x) sfml_Graphics__Sprite_setX((void*) (_this_), (x))
#define Sprite_setY(_this_, y) sfml_Graphics__Sprite_setY((void*) (_this_), (y))
#define Sprite_setPosition_xy(_this_, x, y) sfml_Graphics__Sprite_setPosition_xy((void*) (_this_), (x), (y))
#define Sprite_setScaleX(_this_, scale) sfml_Graphics__Sprite_setScaleX((void*) (_this_), (scale))
#define Sprite_setScaleY(_this_, scale) sfml_Graphics__Sprite_setScaleY((void*) (_this_), (scale))
#define Sprite_setScale_xy(_this_, scaleX, scaleY) sfml_Graphics__Sprite_setScale_xy((void*) (_this_), (scaleX), (scaleY))
#define Sprite_setRotation(_this_, rotation) sfml_Graphics__Sprite_setRotation((void*) (_this_), (rotation))
#define Sprite_setOrigin_xy(_this_, x, y) sfml_Graphics__Sprite_setOrigin_xy((void*) (_this_), (x), (y))
#define Sprite_setColor(_this_, color) sfml_Graphics__Sprite_setColor((void*) (_this_), (color))
#define Sprite_setBlendMode(_this_, mode) sfml_Graphics__Sprite_setBlendMode((void*) (_this_), (mode))
#define Sprite_getX(_this_) sfml_Graphics__Sprite_getX((void*) (_this_))
#define Sprite_getY(_this_) sfml_Graphics__Sprite_getY((void*) (_this_))
#define Sprite_getScaleX(_this_) sfml_Graphics__Sprite_getScaleX((void*) (_this_))
#define Sprite_getScaleY(_this_) sfml_Graphics__Sprite_getScaleY((void*) (_this_))
#define Sprite_getRotation(_this_) sfml_Graphics__Sprite_getRotation((void*) (_this_))
#define Sprite_getOriginX(_this_) sfml_Graphics__Sprite_getOriginX((void*) (_this_))
#define Sprite_getOriginY(_this_) sfml_Graphics__Sprite_getOriginY((void*) (_this_))
#define Sprite_getColor(_this_) sfml_Graphics__Sprite_getColor((void*) (_this_))
#define Sprite_getBlendMode(_this_) sfml_Graphics__Sprite_getBlendMode((void*) (_this_))
#define Sprite_move(_this_, offsetX, offsetY) sfml_Graphics__Sprite_move((void*) (_this_), (offsetX), (offsetY))
#define Sprite_scale(_this_, factorX, factorY) sfml_Graphics__Sprite_scale((void*) (_this_), (factorX), (factorY))
#define Sprite_rotate(_this_, angle) sfml_Graphics__Sprite_rotate((void*) (_this_), (angle))
#define Sprite_transformToLocal_pointers(_this_, pointX, pointY, x, y) sfml_Graphics__Sprite_transformToLocal_pointers((void*) (_this_), (pointX), (pointY), (x), (y))
#define Sprite_transformToGlobal_pointers(_this_, pointX, pointY, x, y) sfml_Graphics__Sprite_transformToGlobal_pointers((void*) (_this_), (pointX), (pointY), (x), (y))
#define Sprite_setImage_withbool(_this_, image, adjustToNewSize) sfml_Graphics__Sprite_setImage_withbool((void*) (_this_), (image), (adjustToNewSize))
#define Sprite_setImage_withoutbool(_this_, image) sfml_Graphics__Sprite_setImage_withoutbool((void*) (_this_), (image))
#define Sprite_setSubRect(_this_, subRect) sfml_Graphics__Sprite_setSubRect((void*) (_this_), (subRect))
#define Sprite_resize(_this_, width, height) sfml_Graphics__Sprite_resize((void*) (_this_), (width), (height))
#define Sprite_flipX(_this_, flipped) sfml_Graphics__Sprite_flipX((void*) (_this_), (flipped))
#define Sprite_flipY(_this_, flipped) sfml_Graphics__Sprite_flipY((void*) (_this_), (flipped))
#define Sprite_getImage(_this_) sfml_Graphics__Sprite_getImage((void*) (_this_))
#define Sprite_getSubRect(_this_) sfml_Graphics__Sprite_getSubRect((void*) (_this_))
#define Sprite_getWidth(_this_) sfml_Graphics__Sprite_getWidth((void*) (_this_))
#define Sprite_getHeight(_this_) sfml_Graphics__Sprite_getHeight((void*) (_this_))
#define Sprite_getPixel(_this_, x, y) sfml_Graphics__Sprite_getPixel((void*) (_this_), (x), (y))
#define Sprite_setPosition_vec(_this_, vec) sfml_Graphics__Sprite_setPosition_vec((void*) (_this_), (void*) (vec))
#define Sprite_setScale_vec(_this_, vec) sfml_Graphics__Sprite_setScale_vec((void*) (_this_), (void*) (vec))
#define Sprite_setOrigin_vec(_this_, vec) sfml_Graphics__Sprite_setOrigin_vec((void*) (_this_), (void*) (vec))
#define Sprite_getScale(_this_) (void*) sfml_Graphics__Sprite_getScale((void*) (_this_))
#define Sprite_getOrgin(_this_) (void*) sfml_Graphics__Sprite_getOrgin((void*) (_this_))
#define Sprite_transformToLocal_vec(_this_, point) (void*) sfml_Graphics__Sprite_transformToLocal_vec((void*) (_this_), (void*) (point))
#define Sprite_transformToGlobal_vec(_this_, point) (void*) sfml_Graphics__Sprite_transformToGlobal_vec((void*) (_this_), (void*) (point))
#define Sprite___load__() sfml_Graphics__Sprite___load__()
#define TextStyle sfml_Graphics__TextStyle
#define TextStyle_class() sfml_Graphics__TextStyle_class()
#define TextStyleClass sfml_Graphics__TextStyleClass
#define TextStyleClass_class() sfml_Graphics__TextStyleClass_class()
#define TextStyle___load__() sfml_Graphics__TextStyle___load__()
#define Text sfml_Graphics__Text
#define Text_class() sfml_Graphics__Text_class()
#define TextClass sfml_Graphics__TextClass
#define TextClass_class() sfml_Graphics__TextClass_class()
#define Text_new() sfml_Graphics__Text_new()
#define Text_copy(_this_) sfml_Graphics__Text_copy((void*) (_this_))
#define Text_destroy(_this_) sfml_Graphics__Text_destroy((void*) (_this_))
#define Text_setX(_this_, x) sfml_Graphics__Text_setX((void*) (_this_), (x))
#define Text_setY(_this_, y) sfml_Graphics__Text_setY((void*) (_this_), (y))
#define Text_setPosition(_this_, left, top) sfml_Graphics__Text_setPosition((void*) (_this_), (left), (top))
#define Text_setScaleX(_this_, scale) sfml_Graphics__Text_setScaleX((void*) (_this_), (scale))
#define Text_setScaleY(_this_, scale) sfml_Graphics__Text_setScaleY((void*) (_this_), (scale))
#define Text_setScale(_this_, scaleX, scaleY) sfml_Graphics__Text_setScale((void*) (_this_), (scaleX), (scaleY))
#define Text_setRotation(_this_, rotation) sfml_Graphics__Text_setRotation((void*) (_this_), (rotation))
#define Text_setOrigin(_this_, x, y) sfml_Graphics__Text_setOrigin((void*) (_this_), (x), (y))
#define Text_setColor(_this_, color) sfml_Graphics__Text_setColor((void*) (_this_), (color))
#define Text_setBlendMode(_this_, mode) sfml_Graphics__Text_setBlendMode((void*) (_this_), (mode))
#define Text_getX(_this_) sfml_Graphics__Text_getX((void*) (_this_))
#define Text_getY(_this_) sfml_Graphics__Text_getY((void*) (_this_))
#define Text_getScaleX(_this_) sfml_Graphics__Text_getScaleX((void*) (_this_))
#define Text_getScaleY(_this_) sfml_Graphics__Text_getScaleY((void*) (_this_))
#define Text_getRotation(_this_) sfml_Graphics__Text_getRotation((void*) (_this_))
#define Text_getOriginX(_this_) sfml_Graphics__Text_getOriginX((void*) (_this_))
#define Text_getOriginY(_this_) sfml_Graphics__Text_getOriginY((void*) (_this_))
#define Text_getColor(_this_) sfml_Graphics__Text_getColor((void*) (_this_))
#define Text_getBlendMode(_this_) sfml_Graphics__Text_getBlendMode((void*) (_this_))
#define Text_move(_this_, offsetX, offsetY) sfml_Graphics__Text_move((void*) (_this_), (offsetX), (offsetY))
#define Text_scale(_this_, factorX, factorY) sfml_Graphics__Text_scale((void*) (_this_), (factorX), (factorY))
#define Text_rotate(_this_, angle) sfml_Graphics__Text_rotate((void*) (_this_), (angle))
#define Text_transformToLocal(_this_, pointX, pointY, x, y) sfml_Graphics__Text_transformToLocal((void*) (_this_), (pointX), (pointY), (x), (y))
#define Text_transformToGlobal(_this_, pointX, pointY, x, y) sfml_Graphics__Text_transformToGlobal((void*) (_this_), (pointX), (pointY), (x), (y))
#define Text_setString(_this_, string) sfml_Graphics__Text_setString((void*) (_this_), (string))
#define Text_setUnicodeString(_this_, string) sfml_Graphics__Text_setUnicodeString((void*) (_this_), (string))
#define Text_setFont(_this_, font) sfml_Graphics__Text_setFont((void*) (_this_), (font))
#define Text_setCharacterSize(_this_, size) sfml_Graphics__Text_setCharacterSize((void*) (_this_), (size))
#define Text_setStyle(_this_, style) sfml_Graphics__Text_setStyle((void*) (_this_), (style))
#define Text_getUnicodeString(_this_) sfml_Graphics__Text_getUnicodeString((void*) (_this_))
#define Text_getString(_this_) sfml_Graphics__Text_getString((void*) (_this_))
#define Text_getFont(_this_) sfml_Graphics__Text_getFont((void*) (_this_))
#define Text_getCharacterSize(_this_) sfml_Graphics__Text_getCharacterSize((void*) (_this_))
#define Text_getStyle(_this_) sfml_Graphics__Text_getStyle((void*) (_this_))
#define Text_getCharacterPos(_this_, index, x, y) sfml_Graphics__Text_getCharacterPos((void*) (_this_), (index), (x), (y))
#define Text_getRect(_this_) sfml_Graphics__Text_getRect((void*) (_this_))
#define Text_setPosition_vec(_this_, vec) sfml_Graphics__Text_setPosition_vec((void*) (_this_), (void*) (vec))
#define Text_setScale_vec(_this_, vec) sfml_Graphics__Text_setScale_vec((void*) (_this_), (void*) (vec))
#define Text_setOrigin_vec(_this_, vec) sfml_Graphics__Text_setOrigin_vec((void*) (_this_), (void*) (vec))
#define Text_getScale(_this_) (void*) sfml_Graphics__Text_getScale((void*) (_this_))
#define Text_getOrgin(_this_) (void*) sfml_Graphics__Text_getOrgin((void*) (_this_))
#define Text_transformToLocal_vec(_this_, point) (void*) sfml_Graphics__Text_transformToLocal_vec((void*) (_this_), (void*) (point))
#define Text_transformToGlobal_vec(_this_, point) (void*) sfml_Graphics__Text_transformToGlobal_vec((void*) (_this_), (void*) (point))
#define Text___load__() sfml_Graphics__Text___load__()
#define View sfml_Graphics__View
#define View_class() sfml_Graphics__View_class()
#define ViewClass sfml_Graphics__ViewClass
#define ViewClass_class() sfml_Graphics__ViewClass_class()
#define View_new() sfml_Graphics__View_new()
#define View_new_fromRect(rect) sfml_Graphics__View_new_fromRect((rect))
#define View_copy(_this_) sfml_Graphics__View_copy((void*) (_this_))
#define View_destroy(_this_) sfml_Graphics__View_destroy((void*) (_this_))
#define View_setCenter(_this_, x, y) sfml_Graphics__View_setCenter((void*) (_this_), (x), (y))
#define View_setSize(_this_, width, height) sfml_Graphics__View_setSize((void*) (_this_), (width), (height))
#define View_setRotation(_this_, angle) sfml_Graphics__View_setRotation((void*) (_this_), (angle))
#define View_setViewport(_this_, viewport) sfml_Graphics__View_setViewport((void*) (_this_), (viewport))
#define View_reset(_this_, rectangle) sfml_Graphics__View_reset((void*) (_this_), (rectangle))
#define View_getCenterX(_this_) sfml_Graphics__View_getCenterX((void*) (_this_))
#define View_getCenterY(_this_) sfml_Graphics__View_getCenterY((void*) (_this_))
#define View_getWidth(_this_) sfml_Graphics__View_getWidth((void*) (_this_))
#define View_getHeight(_this_) sfml_Graphics__View_getHeight((void*) (_this_))
#define View_getRotation(_this_) sfml_Graphics__View_getRotation((void*) (_this_))
#define View_getViewport(_this_) sfml_Graphics__View_getViewport((void*) (_this_))
#define View_rotate(_this_, angle) sfml_Graphics__View_rotate((void*) (_this_), (angle))
#define View_move(_this_, offsetX, offsetY) sfml_Graphics__View_move((void*) (_this_), (offsetX), (offsetY))
#define View_zoom(_this_, factor) sfml_Graphics__View_zoom((void*) (_this_), (factor))
#define View___load__() sfml_Graphics__View___load__()
#endif

#endif // ___sfml_Graphics___
