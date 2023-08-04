/// @description  Draw this shit

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

draw_set_alpha(overlay_alpha)
draw_set_colour($2e1814)
draw_rectangle(-1000, -5, room_width+1000, room_height+5, false)

draw_sprite_ext(sprAlexGameOver, 0, go_x, go_y, 1, 1, 0, -1, go_alpha);

draw_set_font(fAlexSmall)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(text_alpha)

scrDrawTextOutline(text_x, text_y, "Would you like to restart from the last wave?", c_white, c_black)

draw_set_font(fAlexMedium)
var opt_y = text_y+text_opt_ysep
scrDrawTextOutline(text_x-text_opt_xsep, opt_y, "YEAH", c_white, c_black)
scrDrawTextOutline(text_x+text_opt_xsep, opt_y, "NOPE", c_white, c_black)

var cursor_x = (room_width/2)-text_opt_xsep;
if(opt_index == 1)
    cursor_x = (room_width/2)+text_opt_xsep; 
draw_sprite_ext(sprAlexSellButtonCursor, t/5, cursor_x, opt_y, 1, 1, 0, -1, text_alpha)

draw_set_alpha(fade_alpha);
draw_set_colour(c_black)
draw_rectangle(-1000, -5, room_width+1000, room_height+5, false)

draw_set_alpha(1);
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

