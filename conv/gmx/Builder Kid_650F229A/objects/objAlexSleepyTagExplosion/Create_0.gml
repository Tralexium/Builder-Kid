/// @description  Init vars & particles

image_speed = .5;
depth = -y;

scrAlexShake(2, 10, 80, 40);

repeat(5) {
    var scale = random_range(.5, 1);
    var p = scrAlexMakeParticle(x, y, 20, sprAlexSleepyTagStarPart, 0,
                         random(360), random_range(2, 3), false, true, true);
        p.add_angle = -10;
        p.image_xscale = scale;
        p.image_yscale = scale; 
}

alarm[0] = 3;

