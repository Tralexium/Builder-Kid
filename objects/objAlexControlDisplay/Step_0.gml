/// @description  Assign text & move text panels

if(scrAlexCheckWaveClear() && !scrAlexCheckGameOver()) {
    slide_amnt = lerp(slide_amnt, 0, .2);
} else {
    slide_amnt = lerp(slide_amnt, 1, .2);
}

// Get the proper text
var tc = objAlexTowerController

if (instance_exists(tc)) {
    if(tc.sell_mode) {
        jump_text = "[JUMP] to sell"
        shoot_text = "[SHOOT] to cancel"
    }
    else if(tc.equiped_tower != noone) {
        jump_text = "[JUMP] to place"
        shoot_text = "[SHOOT] to cancel"
    }
    else if(tc.shop_visible) {
        jump_text = "[JUMP] to equip tower"
        shoot_text = "[SHOOT] to cancel"
    }
    else if(scrAlexCheckGameClear()){
        jump_text = ""
        shoot_text = "[HOLD SHOOT] to finish"
    }
    else {
        jump_text = "[JUMP] to open shop"
        shoot_text = "[HOLD SHOOT] to start"
    }
}

