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

if(hp <= 0) {
    instance_create(x, y, objAlexEnemyKilledVFX)
    audio_play_sound(death_sound, 0, false)
}

