// Draw two parts of the sprite offest by the push speed for a nice animation.
var t = round(animT*hsp) mod 32
if t < 0 t += 32
draw_sprite_part_ext(sprite_index, 0, 0, 0, 32-t, 32, x+t, y, 1, 1, c_white, 0.5)
draw_sprite_part_ext(sprite_index, 0, 32-t, 0, t, 32, x, y, 1, 1, c_white, 0.5)

