/// @description  Draw

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
draw_set_alpha(fade_alpha);
draw_set_colour(c_black)
draw_rectangle(-5, -5, room_width+5, room_height+5, false)

draw_set_alpha(1);
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

