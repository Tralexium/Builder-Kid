/// @description  Depth control and magnet

depth = -y

var distance = distance_to_object(objAlexPlayer);
if(distance <= magnet_range) {
    speed = magnet_power*((magnet_range-distance)/magnet_range)+.1
    direction = point_direction(x, y, objAlexPlayer.x, objAlexPlayer.y)
} else {
    speed = lerp(speed, 0, .2);
}

/// Expiry timer

t++;

if(t >= expire_time/1.5) {
    var half_time = expire_time/1.5
    var freq = (t-half_time)/10
    
    image_alpha = abs(dcos(t*freq))
}

if(t >= expire_time) instance_destroy();

/// Spawn particles

if(t mod 2 == 0) {
    var p = scrAlexMakeParticle(x+irandom_range(-4, 4), y-8, 10, sprAlexHeartPart, 0,
                         90, 1.5, true, false, false);
        p.depth = depth+1;
}

