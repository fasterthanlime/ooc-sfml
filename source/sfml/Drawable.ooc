import sfml/Graphics

Vector2 : class <T> {
    x : T
    y : T
    
    init : func(=x,=y)
}

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
    
    setPosition: func ~vec(vec : Vector2<Float>) { setPosition(vec x as Float, vec y as Float) }
    setScale: func ~vec(vec : Vector2<Float>) { setScale(vec x as Float, vec y as Float) }
    getScale : func -> Vector2<Float> {
        Vector2<Float> new(getScaleX(),getScaleY())
    }
    transformToLocal : func ~vec(point : Vector2<Float>) -> Vector2<Float> {
        x,y : Float
        transformToLocal(point x as Float, point y as Float, x&, y&)
        Vector2<Float> new(x,y)
    }
    transformToGlobal : func ~vec(point : Vector2<Float>) -> Vector2<Float> {
        x,y : Float
        transformToGlobal(point x as Float, point y as Float, x&, y&)
        Vector2<Float> new(x,y)
    }
    setPosition: func ~v (v: Vector2<Float>) {
        setPosition(v x as Float, v y as Float)
    }
    setOrigin: func ~v (v: Vector2<Float>) {
        setOrigin(v x as Float, v y as Float)
    }
    getPosition: func -> Vector2<Float> {
        Vector2<Float> new(getX(),getY())
    }
    move: func ~v (v: Vector2<Float>) {
        move(v x as Float,v y as Float)
    }
    getOrigin: func -> Vector2<Float> {
        Vector2<Float> new(getOriginX(),getOriginY())
    }
    scale: func ~v (v: Vector2<Float>) {
        scale(v x as Float,v y as Float)
    }
}
