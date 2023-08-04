draw_sprite(sprite_index,image_index,x,y)
if effect {
    aa -= .04
    xs += .05
    ys += .05
    draw_sprite_ext(sprite_index,image_index,x,y,xs,ys,0,c_white,aa)
    if aa <= 0 effect = false
}

