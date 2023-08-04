if(shake_amnt > 0) {
    var shake = dsin(t*40)*shake_amnt;
    shake_amnt -= .2;
    draw_sprite_ext(sprite_index, image_index, x+shake, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

