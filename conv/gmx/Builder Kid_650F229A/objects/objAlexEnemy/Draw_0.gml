/// @description  Draw shadow & bounce

var w = abs(sprite_width/2);
var h = abs(sprite_height/4);

var dark_col = $14182e
draw_set_colour(dark_col)
draw_set_alpha(.4)
draw_ellipse(x-w-1, y-h-2, x+w-1, y+h-2, false)
draw_set_alpha(1)

draw_sprite_ext(sprite_index, image_index, x, y-bounce_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

/// Draw health bar

if(hp != max_hp) {
    var scale = hp/max_hp;
    var col = merge_colour($3945e6, $3fab63, scale);
    
    draw_sprite(sprAlexEnemyHealthBarBG, 0, x, y+2)
    draw_sprite_ext(sprAlexEnemyHealthBar, 0, x-11, y+2, scale, 1, 0, col, 1)
}

