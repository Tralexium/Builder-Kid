/// @description  Logic

t++;

x = lerp(x, target_x, lerp_spd)
y = lerp(y, target_y, lerp_spd)

image_alpha = 0.5 + (dsin(t*4)*0.2)

if(!place_meeting(x, y, objAlexTower)) {
    image_index = 0
    
    if(scrButtonCheckPressed(global.jumpButton)) {
        shake_amnt = 5
        audio_play_sound(sndAlexUIError, 0, false);
    }
}

