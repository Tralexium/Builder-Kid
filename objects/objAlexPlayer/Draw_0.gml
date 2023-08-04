/// @description  Draw shadow and scale

var w = 10;
var h = 4;

var dark_col = $14182e
draw_set_colour(dark_col)
draw_set_alpha(.4)
draw_ellipse(x-w-1, y-h-2, x+w-1, y+h-2, false)
draw_set_alpha(1)

draw_sprite_ext(sprite_index, image_index, x, y, draw_xscale, image_yscale, image_angle, image_blend, image_alpha);

