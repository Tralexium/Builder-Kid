/// @description  Logic

if(t == 0) {
    max_life = life;
}

// Check if the particle is expired
if(life <= 0) {
    instance_destroy();
} else {
    life--;
}


// A normalized remainder of life
var life_normal = life/max_life;

t++;

// Colour
image_blend = merge_colour(start_col, end_col, life_normal);

// Scale
if(shrink) {
    image_xscale = life_normal
    image_yscale = life_normal
}

// Alpha
if(fade) {
    image_alpha = life_normal
}

// Speed
speed += spd_shift;

// Wiggle in space
if(random_wiggle > 0) {
    x += random_range(-random_wiggle, random_wiggle)
    y += random_range(-random_wiggle, random_wiggle)
}

// Sort the depth based on position
if(depth_check) {
    depth = -y
}

// Add angle
if(add_angle != 0) {
    image_angle += add_angle
}

