/// @description  Draw the bar

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

var dark_col = $2e1814
draw_set_colour(dark_col)
draw_set_alpha(image_alpha)
draw_rectangle(x+16, y+3, x+92, y+12, false)
draw_set_alpha(1)
draw_sprite_ext(sprAlexHealthBar, 0, x+16, y+3, progress, 1, 0, -1, image_alpha)
draw_self()
draw_set_font(fAlexSmall)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
scrDrawTextOutline(x+56, y+7, string(hp)+"/"+string(max_hp), c_white, dark_col)

display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

