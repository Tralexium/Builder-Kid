/// @description  Shake the tower when trying to place it in an invalid spot

var x_coord, y_coord;

if(active) {
    x_coord = x
    y_coord = y
} else {
    x_coord = fake_x
    y_coord = fake_y
    
    if(range > 0) {
        draw_set_alpha(.3);
        draw_set_colour(c_dkgray)
        draw_circle(x_coord, y_coord, range, false)
        draw_set_alpha(1);
    }
}

if(tower_shake_amnt > 0) {
    var shake = dsin(t*40)*tower_shake_amnt;
    tower_shake_amnt -= .2;
    draw_sprite_ext(sprite_index, active, x_coord+shake, y_coord, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
    draw_sprite_ext(sprite_index, active, x_coord, y_coord, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

/// Draw the top part

draw_sprite_ext(top_sprite, top_image_index, top_x, top_y, top_scale, top_scale, 0, -1, 1)

/// Draw the dizzy stars when stunned

if(stunned) {
    star_t++;
    draw_sprite(sprAlexTowerStunned, star_t/5, x, top_y-16);
}

