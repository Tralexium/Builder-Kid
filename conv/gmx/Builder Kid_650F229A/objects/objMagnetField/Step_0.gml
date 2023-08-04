yOffset -= 4
// Wrap around yOffset between 0 and sprite height
var h = sprite_get_height(sprite_index)
yOffset = yOffset mod h
if yOffset < 0 {
    yOffset += h
}

