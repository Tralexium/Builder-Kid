/// @description  Draw line/pointer

if(target_x+target_y != 0 && !scrAlexCheckWaveClear()) {
    draw_set_blend_mode(bm_add)
    var angle = point_direction(x, y-height, target_x, target_y)
    draw_line_colour(x + lengthdir_x(fire_radius, angle), y + lengthdir_y(fire_radius, angle)-height, target_x, target_y-8, c_orange, c_black)
    draw_set_blend_mode(bm_normal)
    draw_sprite(sprAlexBlasterTowerTarget, 0, target_x, target_y-8)
}

