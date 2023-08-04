/// @description  Create explosion

if((x > 0 && x < room_width && y > 0 && y < room_height) && !scrAlexCheckWaveClear() && range>0) {
    instance_create(x, y, objAlexBlasterExplosion)
}

