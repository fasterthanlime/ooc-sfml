import sfml/[Drawable, Graphics, System]

RenderTarget: abstract class {
    getSize: abstract func -> Vector2u
    saveGLStates: abstract func
    restoreGLStates: abstract func
    clear: abstract func (color: Color)
    setView: abstract func (view: View)
    getView: abstract func -> View
    getDefaultView: abstract func -> View
    getViewport: abstract func(v: View) -> IntRect
    convertCoords: abstract func (windowX: UInt, windowY: UInt, viewX: Float*, viewY: Float*, targetView: View)
    draw: abstract func ~sprite (sprite: Sprite, renderStates: RenderStates)
    draw: abstract func ~shape (shape: Shape, renderStates: RenderStates)
    draw: abstract func ~text (text: Text, renderStates: RenderStates)
    
    clear: func ~defaultColor {
        this clear(Color Black)
    }
    draw: func ~drawable (d: Drawable) {
        match (d class) {
            case Sprite => draw(d as Sprite)
            case Shape => draw(d as Shape)
            case Text => draw(d as Text)
        }
    }
    draw: func ~drawableShader (d: Drawable, shader: Shader) {
        match (d class) {
            case Sprite => draw(d as Sprite, shader)
            case Shape => draw(d as Shape, shader)
            case Text => draw(d as Text, shader)
        }
    }
}
