event_inherited();
/// Modify the variables

name = "Sprayer"
top_sprite = sprAlexSprayerTowerIdle
portrait = sprAlexSprayerTowerPortrait
cost = 120
range = 128;
grid_size = 2
fire_frequency = 50
projectile = objAlexSprayerProjectile
height = 13
fire_radius = 0
top_x_offset = 0
top_y_offset = -1

/// New variables

target_x = 0;
target_y = 0;
fire_spray = false;
starting_bullet_angle = -10;
bullet_angle = starting_bullet_angle;
angle_increase = 10;
shots = 0;
max_shots = 3;
delay_between_bullets = 5;

