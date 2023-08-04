with (objPlayer)
{
    //draw screen wrapping versions of sprite
    draw_sprite_ext(sprite_index,image_index,x+__view_get( e__VW.WView, 0 ),y,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.WView, 0 ),y,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y+__view_get( e__VW.HView, 0 ),image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y-__view_get( e__VW.HView, 0 ),image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
}

with (objPlatform)
{
    //draw screen wrapping versions of sprite
    draw_sprite_ext(sprite_index,image_index,x+__view_get( e__VW.WView, 0 ),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.WView, 0 ),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y+__view_get( e__VW.HView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    draw_sprite_ext(sprite_index,image_index,x,y-__view_get( e__VW.HView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}

