/// @description  Shoot at the player

if(instance_exists(objAlexPlayer)) {
    var p = objAlexPlayer;
    
    if((p.x > x && image_xscale > 0) || (p.x < x && image_xscale < 0)) {
        if(t mod shoot_frequency == 0 && distance_to_object(p) > 100) {
            shoot_frequency = irandom_range(100, 200);
            image_speed = .3;
            
            var angle = point_direction(x+(sprite_width/2), y-4, p.x, p.y);
            
            var inst = instance_create(x+(sprite_width/2), y-4, objAlexSoldierTagProjectile);
                inst.direction = angle;
                inst.image_angle = angle;
        }
    }
}

