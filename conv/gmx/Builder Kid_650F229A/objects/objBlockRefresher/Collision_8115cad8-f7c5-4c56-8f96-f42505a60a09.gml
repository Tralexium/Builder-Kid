if (visible)
{
    // CHANGED: if triple jump, only restore one jump
    with (objPlayer) {
        if numJumps == 2 {
            djump = 1
        } else {
            djump += 0.5
            if djump > 1 djump = 1
        }
    }
    
    visible = false;
    alarm[0] = refreshTime;
}

