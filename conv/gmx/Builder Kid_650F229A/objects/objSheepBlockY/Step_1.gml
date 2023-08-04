if io = 0 and collision_rectangle(x-2,y-2,x+34,y+34,objPlayer,0,0) { 

    audio_play_sound(sndSheepBlock,0,0);
    
    with(objSheepBlockY) { 
        if xp = other.xp && yp = other.yp {
            image_speed = 0.2; io = 1; 
        }
    }
    with(objSheepSpikeY) { 
        if xp = other.xp && yp = other.yp {
            image_speed = 0.2; io = 1; 
        }
    }
}

