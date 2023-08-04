/// @description  Draw the tower pointing dot for test porpuses

/*
if(global.debugVisuals) {
    draw_set_colour(c_red)
    draw_circle(tower_point_x*2-2, tower_point_y*2-2, 2, false)
    draw_set_colour(c_blue)
    draw_circle(tower_point_x*2+2, tower_point_y*2-2, 2, false)
    draw_set_colour(c_lime)
    draw_circle(tower_point_x*2, tower_point_y*2+2, 2, false)
}
*/

/* */
/// Draw the tower menu

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

// Draw BG
draw_set_alpha(shop_bg_alpha);
draw_sprite_tiled(sprAlexTowerMenuBG, 0, draw_t/2, draw_t/2);

// Draw tower menu
for(i=0; i<6; i++) {
    draw_set_alpha(1);
    var xx = slot_start_x + (i*slot_hor_margin);
    var yy = slot_start_y;
    if(i > 2) {
        xx = slot_start_x + (i*slot_hor_margin) - (3*slot_hor_margin);
        yy = slot_start_y + slot_ver_margin;
    }
    var scale = tower_slot_scale[i]
    var alpha = tower_slot_alpha[i]
    
    // draw slot
    draw_sprite_ext(sprAlexTowerSlot, 0, xx, yy, scale, scale, 0, -1, alpha);
    // draw cursor
    if(slot_index == 6)
        draw_sprite_ext(sprAlexSellButtonCursor, t/5, sell_button_x+cursor_shake_pos, sell_button_y, scale, scale, 0, cursor_blend_col, alpha)
    else if(i == slot_index)
        draw_sprite_ext(sprAlexTowerSlotCursor, t/5, xx+cursor_shake_pos, yy, scale, scale, 0, cursor_blend_col, alpha)
        
    // draw tower info
    draw_set_alpha(shop_alpha)
    var sprite = tower_sprite[i]
    var name = tower_name[i]
    var cost = tower_cost[i]
    
    draw_set_font(fAlexSmall)
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
    
    var cost_string = string(coins)+"/"+string(cost)
    var cost_length = (string_length(cost_string)*4)+2
    
    if(tower_slot_revealed[i]) {
        draw_sprite(sprite, 0, xx, yy);
        scrDrawTextOutline(xx+2, yy+18, name, c_white, c_black)
        draw_sprite(sprAlexCoinIcon, t/5, xx-cost_length, yy+40)
    } else {
        draw_sprite_ext(sprite, 0, xx, yy, 1, 1, 0, c_black, shop_alpha);
        draw_sprite(sprAlexSlotQuestionMark, 0, xx, yy)
        scrDrawTextOutline(xx+2, yy+18, "???", c_white, c_black)
        draw_sprite(sprAlexCoinIcon, t/5, xx-cost_length, yy+40)
    }
    
    if(coins >= cost) {
        scrDrawTextOutline(xx+2, yy+40, cost_string, c_white, c_black)
    } else {
        scrDrawTextOutline(xx+2, yy+40, cost_string, c_red, c_black)
    }
    
    // sell button
    draw_sprite(sprAlexSellButton, 0, sell_button_x, sell_button_y)
    
}

draw_set_alpha(1);
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

/* */
/// Draw coin coutner

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

draw_set_font(fAlexSmall)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_sprite(sprAlexCoinIcon, t/5, coin_count_x, coin_count_y);
scrDrawTextOutline(coin_count_x+10, coin_count_y, string(coins), c_white, c_black)

display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

/* */
/*  */
