if sprite_index == sprBoosterBlock && global.grav == -1 {
    sprite_index = sprBoosterBlockFlipped
}

if sprite_index == sprBoosterBlockFlipped && global.grav == 1 {
    sprite_index = sprBoosterBlock
}


