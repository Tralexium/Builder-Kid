//Reduce hp bar size when boss takes damage
image_blend = make_colour_hsv(80 * (bossHP / maxHP), 255, 255);
image_xscale = maxscale * (bossHP / maxHP);
if(instance_exists(objHPbar2)){
    c.bossHP = bossHP;
}

