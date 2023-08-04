with(other){instance_destroy()};

if(!moving) {
    if(!place_meeting(x+(2*sign(other.hspeed)),y,objBlock) || place_meeting(x,y,objPastelGreenWater)) {
        hspeed = 2*sign(other.hspeed)
        moving=true
    }
}



