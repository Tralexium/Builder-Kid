/// @description  Tower manipulation / placing

// Increment timer
t++;

var hor = scrButtonCheck(global.rightButton) - scrButtonCheck(global.leftButton);
var ver = scrButtonCheck(global.downButton) - scrButtonCheck(global.upButton);

// Get the desired coords to later move the tower towards to
with(objAlexPlayer) {
    if(abs(hor) + abs(ver) != 0) {
    
        var tower_center = 3 // default, when sell mode is on
        if(other.equiped_tower != noone)
            tower_center = other.equiped_tower.grid_size/2 + 2;  // the 2 is there to put distance
                                                            // between the tower and the player
    
        // Point where the tower should lerp to
        other.tower_point_x = clamp(floor((x + (hor*tower_center)*16)/16)*16, 0, room_width);
        other.tower_point_y = clamp(floor((y + (ver*tower_center)*16)/16)*16, 0, room_height);
    }
}

if(equiped_tower != noone) {
    
    // Snap tower to the point
    equiped_tower.fake_x = lerp(equiped_tower.fake_x, tower_point_x, .4);
    equiped_tower.fake_y = lerp(equiped_tower.fake_y, tower_point_y, .4);
    
    // Place tower
    if(scrButtonCheckPressed(global.jumpButton)) {
        if(!equiped_tower.blocked) {
            equiped_tower.active = true
            equiped_tower.x = tower_point_x;
            equiped_tower.y = tower_point_y;
            coins -= equiped_tower.cost;
            
            audio_play_sound(sndAlexTowerPlaced, 0, false);
            
            equiped_tower = noone
            alarm[1] = 1
        } else {
            equiped_tower.tower_shake_amnt = 5
            audio_play_sound(sndAlexUIError, 0, false);
        }
    }
    
    // Cancel tower
    if(scrButtonCheckPressed(global.shootButton)) {
        instance_destroy(equiped_tower)
        equiped_tower = noone
        alarm[1] = 1
        audio_play_sound(sndAlexUICancel, 0, false);
    }
}


if(sell_mode) {
    sell_area_inst.target_x = tower_point_x
    sell_area_inst.target_y = tower_point_y
    
    // Cancel sell mode
    if(scrButtonCheckPressed(global.shootButton)) {
        instance_destroy(sell_area_inst)
        sell_area_inst = noone
        alarm[1] = 1
        audio_play_sound(sndAlexUICancel, 0, false);
    }
}


// Grid visuals
if(equiped_tower != noone || sell_mode) {
    grid_alpha = .2+dsin(t*4)*.1
} else {
    grid_alpha = 0
}

/*
if(scrButtonCheckPressed(global.jumpButton) && equiped_tower == noone && instance_exists(objAlexPlayer)) {
    var tower = instance_create(-100, -100, objAlexAimTower)
    equiped_tower = tower;
}
*/

/* */
/// Tower menu

// Handle logic and draw related vars
if(shop_visible) {
    // LOGIC
    // Move around the slot index
    var hor = scrButtonCheckPressed(global.rightButton) - scrButtonCheckPressed(global.leftButton);
    var ver = scrButtonCheckPressed(global.downButton) - scrButtonCheckPressed(global.upButton);
 
    if(abs(hor)+abs(ver) != 0) {    
        if(slot_index == 6) {
            if(ver > 0)
                slot_index = 1;
            else if(ver < 0)
                slot_index = 4;
        } else if((slot_index == 4 && ver == 1) || (slot_index == 1 && ver == -1))
            slot_index = 6;     // goto sell button
        else if(slot_index == 3 && hor == -1)
            slot_index += 2;    // horizontal scrolling
        else if(slot_index == 2 && hor == 1)
            slot_index -= 2;    // horizontal scrolling
        else
            slot_index += hor+(ver*3);
        
        if(old_slot_index != 4 && old_slot_index != 1) {
            if(slot_index < 0) slot_index += 3;
            if(slot_index > 5) slot_index -= 3;
        }
        
        if(slot_index != old_slot_index) {
            audio_stop_sound(sndAlexUIMove)
            audio_play_sound(sndAlexUIMove, 0, false)
            old_slot_index = slot_index
        }
    }

    // Choose a tower
    if(scrButtonCheckPressed(global.jumpButton)) {
        if(slot_index == 6) {   // Sell mode
            sell_area_inst = instance_create(room_width/2, room_height/2, objAlexSellArea)
            sell_mode = true
            shop_visible = false
            audio_play_sound(sndAlexUISelect, 0, false);
        }
        else if(coins >= tower_cost[slot_index]) {   // Tower mode
            var tower_inst = instance_create(-100, -100, tower[slot_index])
            equiped_tower = tower_inst;
            shop_visible = false
            audio_play_sound(sndAlexUISelect, 0, false);
        } else {
            cursor_rejected_val = 1
            audio_play_sound(sndAlexUIError, 0, false);
        }
    }
    
    // Exit the menu
    if(scrButtonCheckPressed(global.shootButton)) {
        alarm[1] = 1
        audio_play_sound(sndAlexUICancel, 0, false)
    }
    
    // VISUALS
    draw_t++;
    shop_bg_alpha += .1;
    shop_bg_alpha = min(shop_bg_alpha, 1) // Clamp
    
    // Restore slot alpha
    if(draw_t == 1) {
        for(i=0; i<6; i++) {
            tower_slot_alpha[i] = 1
        }
    }
    
    // Pop the tower slots into place
    for(i=0; i<6; i++) {
        var anim_dur = 30
        var anim_start = i*(anim_dur/8)
        if(draw_t >= anim_start && draw_t < anim_start+anim_dur)
            tower_slot_scale[i] = scrAlexEaseOutBounce(draw_t-anim_start, 0, 1, anim_dur)
    }
    
    // Increase the shop opacity when all slots are in place
    if(tower_slot_scale[5] >= .9)
        fade_in_shop = true
    
    if(fade_in_shop)
        shop_alpha = min(shop_alpha + .1, 1);
    
    // Reveal towers if the player can afford them
    for(i=0; i<6; i++) {
        if(coins >= tower_cost[i]) {
            tower_slot_revealed[i] = true
        }
    }
} else if(shop_bg_alpha > 0){
    shop_bg_alpha = max(shop_bg_alpha - 0.1, 0);
    shop_alpha = max(shop_alpha - 0.15, 0);
    for(i=0; i<6; i++) {
        tower_slot_alpha[i] = max(tower_slot_alpha[i] - 0.15, 0);
    }
}

// Cursor related drawing
if(cursor_rejected_val > 0) {    
    cursor_rejected_val -= .05;
    cursor_shake_pos = dsin(draw_t*40)*(10*cursor_rejected_val)
    cursor_blend_col = merge_colour(c_white, c_red, cursor_rejected_val)
}

// Open the menu
if(scrAlexCheckWaveClear() && !scrAlexCheckGameOver() && !scrAlexCheckGameClear() && !scrAlexCheckRestartPrompt() && !in_use) {
    if(scrButtonCheckPressed(global.jumpButton)) {
        in_use = true
        shop_visible = true
        shop_alpha = 0
        draw_t = 0
        slot_index = 0
        fade_in_shop = false
        
        for(i=0; i<6; i++) {
            tower_slot_scale[i] = 0
        }
    }
}

/* */
/// Coin counter

if(show_coin_count || scrAlexCheckWaveClear()) {
    coin_count_y = lerp(coin_count_y, 14, .2);
} else {
    coin_count_y = lerp(coin_count_y, -14, .2);
}

/* */
/*  */
