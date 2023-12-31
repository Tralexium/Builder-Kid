/// @description draw the player

var drawX = x;
var drawY = y;

if (global.grav == -1 && !global.dotkid)      //need to draw the player a pixel off in the y-axis when flipped for some reason
    drawY += 1;

if global.dotkid {
    if global.playerV {
        draw_sprite_ext(sprDotkidOutlinedV,0,drawX,drawY,image_xscale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
    } else {
        draw_sprite_ext(sprDotkidOutlined,0,drawX,drawY,image_xscale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
    }
} else {
    draw_sprite_ext(sprite_index,image_index,drawX,drawY,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);
}

//draw the player's hitbox
if (global.debugShowHitbox)
    draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.8);

