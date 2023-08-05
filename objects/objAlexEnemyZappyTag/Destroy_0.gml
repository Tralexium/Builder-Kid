/// @description  Drop coins

if(hp <= 0) {
    while(value > 0) {
        if(value >= 10) {
            instance_create(x, y, objAlexGoldenCoin);
            value -= 10;
            continue;
        }
        if(value >= 5) {
            instance_create(x, y, objAlexSilverCoin);
            value -= 5;
            continue;
        } 
        else {
            instance_create(x, y, objAlexBronzeCoin);
            value -= 1;
        }
        
    }
}

/// VFX & projectiles

if(hp <= 0) {
    var vfx = instance_create(x, y, objAlexEnemyKilledVFX);
        vfx.sprite_index = sprAlexZappyTagExplosion;
        
    scrAlexShake(1, 10, 80, 40);

    for(var i=0; i<4; i++) {
        var angle = 45 + (i*90);
        var inst = instance_create(x, y, objAlexZappyTagProjectile);
            inst.direction = angle;
    }
    
    audio_play_sound(death_sound, 0, false)
}

