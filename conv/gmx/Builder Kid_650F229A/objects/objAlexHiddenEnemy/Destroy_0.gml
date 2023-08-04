/// @description  Drop coins

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

/// Destroy the list & VFX

ds_list_destroy(projectile_list)
instance_create(x, y, objAlexEnemyKilledVFX)

