/// @description  Draw the glow

draw_self();

draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, -1, glow_alpha)
draw_set_blend_mode(bm_normal);

