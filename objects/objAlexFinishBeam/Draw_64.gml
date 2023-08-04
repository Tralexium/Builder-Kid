/// @description  Draw the flash

display_set_gui_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
draw_set_colour(c_white)
draw_set_alpha(flash_alpha)

draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false)

draw_set_alpha(1)
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

