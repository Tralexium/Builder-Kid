event_inherited();
/// Shoot projectiles

if(!scrAlexCheckWaveClear() && !scrAlexCheckGameOver() && active) {
    if(t mod fire_frequency == 0) {    
        for(i=0; i<2; i++) {
            var angle = (shoot_angle*45)+i*180;        
            var inst = instance_create(x + lengthdir_x(fire_radius, angle), y + lengthdir_y(fire_radius, angle)-height, projectile);
                inst.direction = angle;
        }
        
        shoot_angle++;
            
        top_image_index = 0
        top_sprite = sprAlexSpiralTowerShoot
    }
}

/// reset animation back to idle

var idle_sprite = sprAlexSpiralTowerIdle

if(top_sprite != idle_sprite && top_image_index >= sprite_get_number(top_sprite) - 1) {
    top_image_index = 0
    top_sprite = idle_sprite
}

