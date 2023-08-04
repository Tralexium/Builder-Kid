/// @description  Draw wave num and button

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

draw_set_alpha(image_alpha)

var dark_col = $14182e
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_set_font(fAlexSmall)

// Wave num
var wave_text = "Wave: "+string(current_wave_num)+"/"+string(amount_of_waves)
scrDrawTextOutline(ui_right_margin-8, ui_top_margin, wave_text, c_white, dark_col)

// Button
var button_index = 0
if(!wave_cleared) button_index = 1;
if(fast_forward) button_index = 2;
draw_sprite_ext(button_sprite_index, button_index, ui_right_margin, ui_top_margin, 1, 1, 0, -1, ui_button_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_part(button_sprite_index, button_index, 0, 0, 48*ui_button_progress, 24, ui_right_margin, ui_top_margin)
draw_set_blend_mode(bm_normal)

draw_set_alpha(ui_finish_fade_alpha)
draw_set_colour(c_black)

draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false)

draw_set_alpha(1)
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

