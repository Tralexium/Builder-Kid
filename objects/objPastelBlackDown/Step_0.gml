if(moving && !place_meeting(x,y,objPastelGreenWater) && place_meeting(x+hspeed,y,objBlock)) {
    move_contact_solid(direction,abs(hspeed));
    hspeed=0;
    moving=false;
}

