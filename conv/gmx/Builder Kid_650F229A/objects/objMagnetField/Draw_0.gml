// Draw sprite repeating vertically all the way down the image_yscale, and incorporating animation yOffset.
// Doesn't work with image_yscale < 1.

draw_set_blend_mode(bm_add)

var h = sprite_get_height(sprite_index)

// initial top sprite
draw_sprite_part_ext(sprite_index, 0,
    0, h-yOffset,
    sprite_get_width(sprite_index), yOffset,
    x, y,
    image_xscale, 1, image_blend, image_alpha)

// the rest, cutting off the bottom one
for (var i = yOffset; i < sprite_height; i += h) {
    var remain = sprite_height - i
    draw_sprite_part_ext(sprite_index, 0,
        0, 0,
        sprite_get_width(sprite_index), min(h, remain),
        x, y+i,
        image_xscale, 1, image_blend, image_alpha)
}

draw_set_blend_mode(bm_normal)

