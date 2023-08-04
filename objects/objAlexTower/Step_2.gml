/// @description  Depth control

depth = -fake_y

/// Visuals

t++

top_image_index += top_image_spd

if(!active) {
    image_alpha = 0.5 + (dsin(t*4)*0.2)
} else {
    image_alpha = 1
    
    if(top_t < 20) {
        // Set the top part coordinates to the locked position
        if(top_t == 1) {
            top_x = x + top_x_offset
            top_y = y + top_y_offset
        }
    
        top_t++;
        top_scale = scrAlexEaseOutBounce(top_t, 0, 1, 20)
    }
}

if(blocked) {
    image_blend = c_red
} else {
    image_blend = c_white
}

/// Check if we are colliding with an obstacle/road

if(place_meeting(fake_x, fake_y, objAlexTowerBlocker) || place_meeting(fake_x, fake_y, objAlexBlock)) {
    blocked = true;
} else {
    blocked = false;
}

/// Check if tower is stunned

if(stunned) {
    t = 1;
}

