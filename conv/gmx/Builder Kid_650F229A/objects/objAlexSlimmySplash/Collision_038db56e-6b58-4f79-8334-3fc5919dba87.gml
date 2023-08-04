/// @description  Deal damage to the player

with(objAlexPlayer) {
    if(iframes == 0 && !scrAlexCheckWaveClear() && !scrAlexCheckGameOver()) {
        hp -= other.dmg
        iframes = max_iframes;
    }
}

