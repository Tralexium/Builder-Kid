/// @description  Shoot at the player

if(instance_exists(objAlexPlayer)) {
    var p = objAlexPlayer;
    
    if(t mod shoot_frequency == 0 && distance_to_object(p) > 150) {
        shoot_amount = 2;
        shoot_t = 0;
        shoot_frequency = irandom_range(200, 250);
    }
}

if(shoot_amount > 0) {
    shoot_t++;

    if(shoot_t mod shoot_delay == 0) {
        image_speed = .3;
        
        var angle = point_direction(x+(sprite_width/2), y-4, p.x, p.y);
        
        var inst = instance_create(x+(sprite_width/2), y-4, objAlexSpitterProjectile);
            inst.direction = angle;
            
        shoot_amount--;
    }
}

