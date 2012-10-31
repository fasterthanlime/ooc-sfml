import sfml/System

PausableClock: class {
    paused? := false
    time : Int64 = 0
    clock := Clock new()
    
    init : func ~empty
    init : func ~withPaused(=paused?)
    
    pause : func {
        if(!paused?) {
            paused? = true
            time += clock getElapsedTime() microseconds
        }
    }
    
    start : func {
        if(paused?) {
            paused? = false
            clock restart()
        }
    }
    
    getElapsedTime : func -> Float {
        (paused?) ? time : time + clock getElapsedTime() microseconds
    }
    
    restart : func ~withPaused(=paused?) {
        time = 0
        clock restart()
    }
    
    restart : func ~empty {
        restart(false)
    }
}
