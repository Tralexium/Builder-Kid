if shrink=false{
image_angle = scrOscillate(10,50,0);

image_xscale = 1 + scrOscillate(0.1,150,0);
image_yscale = 1 + scrOscillate(0.1,150,0);
}
else {
image_angle+=angle_increment
angle_increment+=1
image_xscale-=(angle_increment / 500)
image_yscale-=(angle_increment / 500)

if image_xscale <= 0 {instance_destroy() }
}

glowAngle += 1
glowAlpha = 0.8 + scrOscillate(0.2,150,50);

