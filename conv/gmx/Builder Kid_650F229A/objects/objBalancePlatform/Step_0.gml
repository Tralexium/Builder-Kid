if other_platform = 0 { exit } //Abort script if there are no other platforms with the same id

if place_free(x,y+(2*global.grav)) {
    canmove_down = true
}
else if canmove_down = true
{
    canmove_down = false
    move_contact_solid(180+(90*global.grav),2)
}
if place_free(x,y-(2*global.grav)) {
    canmove_up = true
}
else if canmove_up = true
{
    canmove_up = false
    move_contact_solid(180-(90*global.grav),2)
}

if (place_meeting(x,y-(2*global.grav),objPlayer) && objPlayer.onPlatform && canmove_down) {
    if other_platform.canmove_up {
        y += 2*global.grav
        with(objPlayer) {
            y += 2*global.grav
        }
        other_platform.y -= 2*global.grav
    }
}

