/// @description  Visual control

depth = -y;
if(xprevious < x) target_xscale = 1;
if(xprevious > x) target_xscale = -1;

image_xscale = lerp(image_xscale, target_xscale, flip_speed);

t++;
bounce_y = abs(dsin(t*10)*bounce_height);
image_angle = dsin(t*10)*5;

flash_val = lerp(flash_val, 0, .1)
image_blend = merge_colour(c_white, c_red, flash_val);

