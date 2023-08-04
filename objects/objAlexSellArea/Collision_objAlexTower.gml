/// @description  Check if the tower coords match ours

if(other.x == target_x && other.y == target_y)
    image_index = 1
else
    image_index = 0

if(scrButtonCheckPressed(global.jumpButton)) {
    if(other.x == target_x && other.y == target_y) {
        
        with(other) {
            event_user(15)
        }
        
        // This is junky, but it bassically tells the tower controller
        // that we're done with selling and disable the grid
        with(objAlexTowerController) {
            sell_area_inst = noone
            alarm[1] = 1
        }
        
        instance_destroy();
    } else {
        shake_amnt = 5
        audio_play_sound(sndAlexUIError, 0, false);
    }
}

