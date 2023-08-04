if place_meeting(x,y-2,objPlayer) && trap = 0 {
    trap = instance_create(x,y,objChompy);
    trap.creator = id;
    audio_play_sound(sndChompy,0,0);
}

