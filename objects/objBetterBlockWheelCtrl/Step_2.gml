for(var i=1;i<=platforms;i++){
    with (platform[i]){
        if (place_meeting(xprevious,yprevious-global.grav,objPlayer))
            other.playerOn = true;
    }
}

if (rotate && rotSpd != 0){
    //Sound
    if (!audio_is_playing(pushSFX)){
        pushSFX = audio_play_sound(sndBetterBlockWheel, 0, 0); //
    }
    
    //slow down when player is off
    if ((!playerOn && abs(rotSpd) <= frict) || (playerOn && abs(rotSpd) <= frict/2))
        rotSpd = 0; //will overshoot 0
    else{
        if (!playerOn)
            rotSpd -= sign(rotSpd)*frict;
    }
    
    //cap the value
    if (rotCap >= 0 && abs(rotSpd) >= rotCap)
        rotSpd = sign(rotSpd)*rotCap;
    
    //increase angle
    angle += rotSpd;
    
    //audio
    audio_sound_gain(pushSFX, clamp(abs((5*rotSpd)/(3*rotCap)), 0, 1), 0); //1 at max Spd, almost 0 when near 0 Spd
}else audio_stop_sound(pushSFX);

//movement
if (move && trackSize != 0){
    spd = -rotSpd * spdMult;
    if (spdCap >= 0 && abs(spd) > spdCap) spd = spdCap*sign(spd);
    trackPos += spd/trackSize;
    trackPos = clamp(trackPos, 0, 1);
    if (horizontal) x = lerp(minX, maxX, trackPos);
    if (vertical) y = lerp(leftY, rightY, trackPos);
}

for(var i=1;i<=platforms;i++){
    with (platform[i]){
        x = other.x + lengthdir_x(other.dist, other.angle + other.i*(360/other.platforms)) - 16;
        y = other.y + lengthdir_y(other.dist, other.angle + other.i*(360/other.platforms)) - 8;
    }
}

playerOn = false;

