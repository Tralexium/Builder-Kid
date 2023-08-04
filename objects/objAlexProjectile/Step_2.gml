/// @description  Visuals

depth_t++;

if(place_meeting(x, y, objAlexTower)) {
    depth = -500
    depth_t = 0
}

if(depth_t > (sprite_width/2)/speed)
    depth = -y


if(!despawn && !scrAlexCheckWaveClear()) {
    if(image_xscale < 1) {
        image_xscale += .1
        image_yscale += .1
    }
} else {
   image_xscale -= .1
   image_yscale -= .1
   
   if(image_xscale <= 0)
        instance_destroy();
}


/// Check if used all of pierce

if(pierce < 0) {
    instance_destroy()
}

/// Track the range

if(range > 0) {
    range -= speed;
} else {
    despawn = true;
}

