// Note: This collision event is executed before the player's End Step check for killing itself it outside of the room
with(objPlayer) {
    if (x < 0 || x > room_width || y < 0 || y > room_height) && !place_meeting(x,y+2,objMovingPlatform)
    {
        if (x < 0)
        {
            x += room_width;
        }
        if (x > room_width)
        {
            x -= room_width;
        }
        if (y < 0)
        {
            y += room_height;
        }
        if (y > room_height)
        {
            y -= room_height;
        }
    }
}

