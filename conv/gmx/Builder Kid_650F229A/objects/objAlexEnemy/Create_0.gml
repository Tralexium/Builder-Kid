/// @description  Init variables

// Edit these
path = pAlexDefault
max_hp = 1
hp = max_hp
spd = 1
value = 1
exit_damage = 1
should_bounce = true
death_sound = sndAlexEnemyKilled
image_speed = 0

// Misc.
projectile_list = ds_list_create()
saved_path_pos = 0;                 // Used for when hiding enemies
flash_val = 0
t = 0
bounce_y = 0
bounce_height = 5
target_xscale = 1;
flip_speed = .4;

// Begin path
alarm[11] = 1;

