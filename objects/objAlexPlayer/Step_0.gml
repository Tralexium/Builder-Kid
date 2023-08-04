event_inherited();
/// Movement & visuals

depth = -y

var hor = 0
var ver = 0

if(!scrAlexCheckShopOpen() && !scrAlexCheckGameOver() && !scrAlexCheckRestartPrompt()) {
    hor = scrButtonCheck(global.rightButton) - scrButtonCheck(global.leftButton)
    ver = scrButtonCheck(global.downButton) - scrButtonCheck(global.upButton)
}

    if(!place_meeting(x, y, objAlexStickySubstance)) {
        hspd = hor * spd
        vspd = ver * spd
    } else {
        hspd = (hor * spd)/2
        vspd = (ver * spd)/2
    }
    
    if(abs(hor) || abs(ver))    sprite_index = sprAlexPlayerRunning
    else                        sprite_index = sprAlexPlayerIdle
    
    if(hor > 0)                 target_xscale = 1
    if(hor < 0)                 target_xscale = -1
    
    draw_xscale = lerp(draw_xscale, target_xscale, flip_speed);

/// Check if player's hp reached 0

// Clamp health
hp = clamp(hp, 0, max_hp)

// Create a game over
if(hp <= 0) {
    if(!instance_exists(objAlexGameOver))
        instance_create(0, 0, objAlexGameOver)
}

/// IFrames

if(iframes > 0) {
    iframes--;
    if(iframes mod 2 == 0) image_alpha *= -1 // flicker
} else {
    image_alpha = 1
}

