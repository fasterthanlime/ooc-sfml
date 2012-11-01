use sfml

import sfml/[Graphics, Windows, PausableClock]
 
main: func {
    clock := PausableClock new()
    win := RenderWindow new(VideoMode new(600,470), "Hello World!")

    circle := Circle new()
    circle setRadius(20)
    circle setFillColor(Color Red)

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
        win draw(circle, null)
        win display()
    }
}
 
