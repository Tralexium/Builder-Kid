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
        vfx.sprite_index = sprAlexBlasterTowerExplosion;
        vfx.image_blend = c_fuchsia
        
    repeat(8) {
    var p = scrAlexMakeParticle(x, y-8, 30, sprAlexFruitWarriorSmoke, 0,
                         random(360), random_range(1, 2), true, false, true);
        p.image_blend = c_purple
    }
    
    audio_play_sound(death_sound, 0, false)
}

