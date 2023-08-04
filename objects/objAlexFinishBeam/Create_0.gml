/// @description  Init vars

depth = -y
image_speed = .3
image_yscale = 30

flash_alpha = .7;

audio_play_sound(sndAlexClear, 0, false);

// Spawn blast effect under
instance_create(x, y, objAlexFinishBeamBlast)

// Spawn particles
var random_scale = 1
repeat(12) {
    random_scale = random_range(.5, 1);
    var p = scrAlexMakeParticleExt(x, y-8, irandom_range(150, 200), sprAlexFinishPart, .3,
                         random(360), random_range(1, 3), -.02, c_white, c_white, bm_add, true, true, 0, -400, false);
        p.image_xscale = random_scale;
        p.image_yscale = random_scale;
}

