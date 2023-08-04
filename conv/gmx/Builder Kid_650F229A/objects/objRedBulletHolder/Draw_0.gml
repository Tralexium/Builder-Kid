draw_self()

//Extend bullet holder to the floor
if instance_position(x-16,y+49,objBlock) = noone {
        var yy = 0
        do { yy += 1 } until (instance_position(x-16,y+49+yy,objBlock) != noone || y+49+yy > __view_get( e__VW.YView, 0 )+608)
        draw_sprite_ext(sprRedBulletHolderExt,0,x,y+48,1,yy+1,0,c_white,1)
}

