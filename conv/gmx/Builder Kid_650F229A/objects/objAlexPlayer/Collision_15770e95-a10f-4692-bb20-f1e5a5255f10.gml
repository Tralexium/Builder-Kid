/// @description  Take damage from enemy projectile

if(iframes == 0 && !scrAlexCheckWaveClear() && !scrAlexCheckGameOver()) {
    hp -= other.dmg
    iframes = max_iframes;
    
    instance_destroy(other);
}

