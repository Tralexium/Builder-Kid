/// @description  Take damage from projectile

if(iframes == 0 && !scrAlexCheckWaveClear() && !scrAlexCheckGameOver()) {
    hp -= ceil(other.dmg/2) // Makes it more fair
    iframes = max_iframes;
    
    instance_destroy(other);
}

