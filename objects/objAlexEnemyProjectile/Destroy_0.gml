/// @description  Impact effect

if(!scrAlexCheckWaveClear() && (x > 0 && x < room_width && y > 0 && y < room_height))
    instance_create(x, y, objAlexProjectileImpact)

