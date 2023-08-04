/// @description  Visuals

depth_t++;

if(place_meeting(x, y, objAlexTower)) {
    depth = -500
    depth_t = 0
}

if(depth_t > (sprite_width/2)/speed)
    depth = -y

if(image_xscale < 1 && !scrAlexCheckWaveClear()) {
    image_xscale += .1
    image_yscale += .1
} else {
    image_xscale -= .1
    image_yscale -= .1
   
    if(image_xscale <= 0)
        instance_destroy();
}


