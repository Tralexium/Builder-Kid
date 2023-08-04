if idle=true && instance_exists(objPlayer) {
    if (objPlayer.x > x-48 && objPlayer.x < x+(48*2)) { image_index = 1 } else { image_index = 0 }
    if ((objPlayer.x >= x) && (objPlayer.x<=x+48) && (objPlayer.y > y+64) && (objPlayer.y div 608 = y div 608) && !place_meeting(x,y+32,objBlock)) {
        idle=false
        image_index=2
        vspeed=0
        gravity=0.4
    }
}

if vspeed > 0 && place_meeting(x,y+vspeed,objBlock) {
    move_contact_solid(270,vspeed);
    vspeed=0;
    gravity=0;
    audio_play_sound(sndThwomp,0,0);
    alarm[0]=50
}

if vspeed < 0 && y < ystart {
    vspeed=0;
    y=ystart;
}

