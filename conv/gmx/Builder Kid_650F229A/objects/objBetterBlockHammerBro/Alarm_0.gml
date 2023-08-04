image_xscale *= -1;

with instance_create(x-25*image_xscale, y-26, objBetterBlockHammer){
    direction = 90 + 30*other.image_xscale;
    speed = 5;
    gravity = 0.18;
    image_xscale = -other.image_xscale;
}

alarm[0] = 30;

