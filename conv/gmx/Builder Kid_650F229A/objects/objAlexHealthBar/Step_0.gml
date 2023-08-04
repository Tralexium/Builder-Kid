/// @description  Scan the player's stats

with(objAlexPlayer) {
    other.max_hp = max_hp
    other.hp = hp
}

progress = max(lerp(progress, hp / max_hp, .1), 0)

/// Fade bar

if(scrAlexCheckShopOpen()) {
    image_alpha = lerp(image_alpha, 0, .05)
    
} else if(instance_exists(objAlexPlayer)) {
    if(distance_to_object(objAlexPlayer) < 32 && objAlexPlayer.y < 56) {
        image_alpha = lerp(image_alpha, .2, .2)
    } else {
        image_alpha = lerp(image_alpha, 1, .2)
    }
}

/// Manipulate vignette color effect when taking damage

if(hp < old_hp) {
    with(objAlexVignetteEffect) merge_val = 1
}

old_hp = hp

