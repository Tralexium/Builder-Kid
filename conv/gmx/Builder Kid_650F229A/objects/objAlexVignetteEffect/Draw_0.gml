if(!surface_exists(surf)) {
    surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ))
}

surface_set_target(surf)
draw_set_colour(vignette_color)
draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false)
draw_set_blend_mode(bm_subtract)
draw_ellipse_colour(-200, -200, __view_get( e__VW.WView, 0 )+200, __view_get( e__VW.HView, 0 )+200, c_white, c_black, false)
draw_ellipse_colour(-400, __view_get( e__VW.HView, 0 )/2-400, __view_get( e__VW.WView, 0 )+400, __view_get( e__VW.HView, 0 )/2+400, c_white, c_black, false)
draw_ellipse_colour(-200, __view_get( e__VW.HView, 0 )/2-200, __view_get( e__VW.WView, 0 )+200, __view_get( e__VW.HView, 0 )+100, c_white, c_black, false)
draw_set_blend_mode(bm_normal)
surface_reset_target()

draw_set_blend_mode(bm_subtract)
draw_surface(surf, 0, 0)
draw_set_blend_mode(bm_normal)

