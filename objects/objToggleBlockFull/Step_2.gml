// If we're colliding with the player after the collision phase, it must have been squished
if place_meeting(x, y, objPlayer) {
    scrKillPlayer()
}

