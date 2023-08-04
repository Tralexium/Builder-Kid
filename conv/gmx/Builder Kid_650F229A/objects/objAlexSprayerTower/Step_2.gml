action_inherited();
/// Find nearest target

if(!scrAlexCheckWaveClear() && instance_exists(objAlexEnemy)) {
    var enemy = instance_nearest(x, y, objAlexEnemy)
    target_x = enemy.x;
    target_y = enemy.y;
    
    // Exceeds range
    if(distance_to_point(target_x, target_y) > range) {
        target_x = 0
        target_y = 0 
        out_of_range = true
        
        if(t mod (fire_frequency-10) == 0)
            t = fire_frequency-11;
    } else {
        out_of_range = false
    }
} else {
    target_x = 0
    target_y = 0
}

/// Shoot projectiles

if(!scrAlexCheckWaveClear() && !scrAlexCheckGameOver() && active && !out_of_range) {
    if(t mod fire_frequency == 0) {
        fire_spray = true;
        top_image_index = 0
        top_sprite = sprAlexSprayerTowerShoot
    }
}

if(fire_spray) {
    if(t mod delay_between_bullets == 0) {
        var angle = point_direction(x, y-height, target_x, target_y) + bullet_angle
        var inst = instance_create(x + lengthdir_x(fire_radius, angle), y + lengthdir_y(fire_radius, angle)-height, projectile);
                inst.direction = angle;
        
        bullet_angle += angle_increase
        shots++;
        
        if(shots >= max_shots) {
            shots = 0;
            bullet_angle = starting_bullet_angle;
            fire_spray = false
        }     
    }
}

/// reset animation back to idle

var idle_sprite = sprAlexSprayerTowerIdle

if(top_sprite != idle_sprite && top_image_index >= sprite_get_number(top_sprite) - 1) {
    top_image_index = 0
    top_sprite = idle_sprite
}

