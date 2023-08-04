/// @description  Draw what the jump and shoot buttons do atm

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
draw_set_alpha(1-slide_amnt)

draw_set_font(fAlexSmall)
draw_set_valign(fa_bottom)

var move_amnt = slide_dist*slide_amnt

// Jump button
draw_set_halign(fa_left)
scrDrawTextOutline(jump_x-move_amnt, text_y, jump_text, c_white, c_black);

// Shoot button
draw_set_halign(fa_right)
scrDrawTextOutline(shoot_x+move_amnt, text_y, shoot_text, c_white, c_black);

draw_set_alpha(1)
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

