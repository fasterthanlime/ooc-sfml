import sfml/Graphics

Drawable: abstract class {
    setX: abstract func (x: Float)
    setY: abstract func (y: Float)
    setPosition: abstract func (x: Float, y: Float)
    setScaleX: abstract func (scale: Float)
    setScaleY: abstract func (scale: Float)
    setScale: abstract func (scaleX: Float, scaleY: Float)
    setRotation: abstract func (rotation: Float)
    setOrigin: abstract func (x,y: Float)
    
    setBlendMode: abstract func (mode: BlendMode)
    getX: abstract func -> Float
    getY: abstract func -> Float
    getScaleX: abstract func -> Float
    getScaleY: abstract func -> Float
    getRotation: abstract func -> Float
    getColor: abstract func -> Color
    getOriginX: abstract func -> Float
    getOriginY: abstract func -> Float
    getBlendMode: abstract func -> BlendMode
    transformToLocal: abstract func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    transformToGlobal: abstract func (pointX: Float, pointY: Float, x: Float*, y: Float*)
    move: abstract func (offsetX: Float, offsetY: Float)
    scale: abstract func (factorX: Float, factorY: Float)
    rotate: abstract func (angle: Float)
}
