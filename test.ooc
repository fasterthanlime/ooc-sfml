use sfml

import sfml/[Graphics, Windows, PausableClock]
 
main: func {
    clock := PausableClock new()
    win := RenderWindow new(VideoMode new(600,470), "Hello World!")

    sprite := Sprite new()
    "Got sprite %p" printfln(sprite)

    texture := Texture new("data/ball.png" toCString(), null)
    "Got texture %p" printfln(texture)
    sprite setTexture(texture, true)

    while(win open?()) {
        ev: Event
        // we check the events to see if user wants to close window
        while(win pollEvent(ev&)) {
            if(ev type == EventType closed) {
                win close()
            }

            else if(ev type == EventType keyPressed && ev key code == KeyCode P) {
                if(clock paused?) { clock start() }
                else { clock pause() }
            }
        }
    
        clock getElapsedTime() toString() println()
    
        win clear(Color Blue)
        win draw(sprite, null)
        win display()
    }
}
 
