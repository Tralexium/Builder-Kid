if global.grav = 1 {
    with(objPlayer) {
        instance_create(x,y,objSpinTransitionPlayer); 
        instance_destroy()
    }
    audio_play_sound(sndBlockChange,0,0)
    spin=true;
}

