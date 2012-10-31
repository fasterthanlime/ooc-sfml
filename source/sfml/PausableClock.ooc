import sfml/System

PausableClock : class {
    paused? := false
    time : Float = 0
    clock := Clock new()
    
    init : func ~empty
    init : func ~withPaused(=paused?)
    
    pause : func {
        if(!paused?) {
            paused? = true
            time += clock getTime()
        }
    }
    
    start : func {
        if(paused?) {
            paused? = false
            clock reset()
        }
    }
    
    getTime : func -> Float {
        (paused?) ? time : time + clock getTime()
    }
    
    reset : func ~withPaused(=paused?) {
        time = 0
        clock reset()
    }
    
    reset : func ~empty {
        reset(false)
    }
}
