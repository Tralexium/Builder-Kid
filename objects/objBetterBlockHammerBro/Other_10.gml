/// @description Die
image_yscale = -1;
y -= sprite_get_height(sprite_index);
hspeed = random_range(2,5)*choose(1,-1);
vspeed = random_range(-3.5,-2);
gravity = 0.14;
audio_play_sound(sndBetterBlockEnemyDie,0,0);
alarm[0] = 0;

