/// @description  Bounce away from the room's edges

var height = sprite_height
var width = sprite_width

if(!scrAlexCheckWaveClear()) {
    // Horizontal
    if(x >= room_width || x <= 0) {
        hspeed *= -1
        x += hspeed*2;
    }
    
    // Vertical
    if(y >= room_height+height/2 || y <= height/2) {
        vspeed *= -1
        y += vspeed*2;
    }
}

