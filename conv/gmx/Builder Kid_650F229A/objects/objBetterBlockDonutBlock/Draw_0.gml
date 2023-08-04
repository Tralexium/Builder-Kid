if (actualShake){
    draw_self();
}else{
    draw_sprite_ext(sprite_index, image_index, xOrigin + shakeXOff, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

