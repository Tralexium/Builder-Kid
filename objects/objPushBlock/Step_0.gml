xPrev = x
yPrev = y

h = 0
if place_meeting(x-1, y, objPlayer) and scrButtonCheck(global.rightButton) {
    h = pushSpeed
}
if place_meeting(x+1, y, objPlayer) and scrButtonCheck(global.leftButton) {
    h = -pushSpeed
}
if not place_meeting(x, y+1*sign(grav), objBlock) {
    h = 0
}

v += grav
if abs(v) > maxFallSpeed {
    v = sign(v) * maxFallSpeed
}

// Move horizontally, pixel by pixel, until hit a wall or fall off a ledge.
repeat abs(h) {
    x += sign(h)
    if place_meeting(x, y, objBlock) {
        x -= sign(h)
        break
    }
    if not place_meeting(x, y+1*sign(grav), objBlock) {
        break
    }
}

// Move vertically either all at once, or pixel by pixel if hitting the floor.
if not place_meeting(x, y+v, objBlock) {
    y += v
}
else {
    repeat abs(v) {
        y += sign(v)
        if place_meeting(x, y, objBlock) {
            y -= sign(v)
            break
        }
    }
    v = 0
}

/*if place_meeting(x, y, objPlayer) {
    scrKillPlayer()
}*/

xMoved = x
yMoved = y

/* */
/*  */
