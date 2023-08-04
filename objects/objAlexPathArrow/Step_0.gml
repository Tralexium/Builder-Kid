/// @description  fade out if wave has started

if(!scrAlexCheckWaveClear()) {
    if(image_alpha > 0)
        image_alpha -= .05;
    else
        instance_destroy();
} else {
    var alpha_val = 0;
    if(path_position >= .8)
        alpha_val = .1;
    else if(path_position > .2) {
        alpha_val = -.1;
        if (image_alpha <= 0)
            instance_destroy();
    }
    
    image_alpha = clamp(image_alpha + alpha_val, 0, 1);
}

image_angle = direction

