/// @description  Init vars

coins = global.remaining_cash      // Keeps track of player's money, also acts as the starting amount
in_use = false                     // Whether the player is choosing/placing a tower
shop_visible = false               // The menu used for selecting a tower
sell_mode = false                  // Whether the player is choosing a tower to sell
equiped_tower = noone
sell_area_inst = noone
tower_point_x = room_width/2       // The x where the centre of the tower will be hovering
tower_point_y = room_height/2      // Same as above for the Y axis

// Misc.
t = 0                              // General use timer
slot_index = 0                     // Currently selected tower
old_slot_index = 0
draw_t = 0                         // Timer used for drawing
coin_count_x = room_width/2 - 12
coin_count_y = -14
sell_button_x = room_width/2
sell_button_y = room_height - 20
show_coin_count = true             // Slides the coin counter when viewing the shop or grabbing a coin
show_coin_dur = 100                // How long to show the coin counter for
grid_alpha = 0                     // Grid alpha for when placing a tower
shop_bg_alpha = 0                  // Shop background alpha
shop_alpha = 0                     // Shop ellements alpha
fade_in_shop = false               // Because of how easing work increasing the alpha based on the last slot scale is not possible, that's why this boolean activates the fading instead
cursor_rejected_val = 0            // Used for blending and shaking the cursor when selecting an unnavailable tower
cursor_shake_pos = 0
cursor_blend_col = c_white

/// Add towers

tower[0] = objAlexAimerTower
tower[1] = objAlexOctoTower
tower[2] = objAlexSpiralTower
tower[3] = objAlexBlasterTower
tower[4] = objAlexSprayerTower
tower[5] = objAlexBouncerTower

for(i=0; i<6; i++) {
    tower_slot_scale[i] = 0;
    tower_slot_alpha[i] = 1;
    
    var temp_tower = instance_create(-100, -100, tower[i]);
    
    tower_sprite[i] = temp_tower.portrait;
    tower_name[i] = temp_tower.name;
    tower_cost[i] = temp_tower.cost;
    
    instance_destroy(temp_tower);
    
    if(instance_exists(tower[i]))
        tower_slot_revealed[i] = true;
    else
        tower_slot_revealed[i] = false;
}

slot_start_x = 88
slot_start_y = 80+8
slot_hor_margin = 112
slot_ver_margin = 144-24


