if (!falling && active){
    if (wasCarrying){ //only fall if player is standing on the platform
        if (timer == -1){
            timer = 120;
            image_index = 1;
        }else timer --;
        
        if (timer <= 50){
            shakeXOff = irandom_range(-3,3);
            shakeYOff = irandom_range(-3,3);
            if (actualShake){
                x = xOrigin+shakeXOff;
            }
        }else{
            shakeXOff = 0;
            shakeYOff = 0;
            if (actualShake){
                x = xOrigin;
                y = yOrigin;
            }
        }
        if (timer <= 0){
            falling = true;
            friction = 0;
            vspeed = global.grav;
            gravity = 0.08*global.grav;
            if (actualShake){
                x = xOrigin;
                y = yOrigin;
            }
            timer = -1;
        }
    }else{
        timer = -1;
        image_index = 0;
        if (actualShake){
            x = xOrigin;
            y = yOrigin;
        }
    }
}

if ((sign(vspeed) == 1 && bbox_top >= room_height + 32) || (sign(vspeed) == -1 && bbox_bottom <= -32)){
    instance_destroy();
}

