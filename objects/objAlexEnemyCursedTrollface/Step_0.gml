/// @description  Shoot at the player

if(instance_exists(objAlexPlayer)) {
    var p = objAlexPlayer;
    
    if(t mod shoot_frequency == 0) {
        image_speed = .3;
        
        scrMakeCircle(x, y, 0, 8, 1, objAlexCursedTrollFaceProjectile);
        
        with(objAlexCursedTrollFaceProjectile) {
            curve_spd = other.curve_dir * other.curve_spd
        }
        
        curve_dir *= -1;
    }
}

