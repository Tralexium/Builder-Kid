/// @description  Expand and decrease and glow

t++;

glow_alpha = dsin(t*10)*.5

if(t < duration && !scrAlexCheckWaveClear()) {
    image_xscale = lerp(image_xscale, target_xscale, lerp_spd);
    image_yscale = lerp(image_yscale, target_yscale, lerp_spd);
} else {
    image_xscale = lerp(image_xscale, 0, lerp_spd/2);
    image_yscale = lerp(image_yscale, 0, lerp_spd/2);
    image_alpha = lerp(image_alpha, 0, lerp_spd/2);
    
    if(image_alpha <= .1) instance_destroy();
}

