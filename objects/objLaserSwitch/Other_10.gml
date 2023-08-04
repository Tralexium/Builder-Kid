audio_play_sound(sndLaserSwitch, 0, false)
if image_index == 0 {
    with objLaserSwitch image_index = 1
    with objLaserOffH {
        killer = true
        sprite_index = sprLaserOnH
        image_speed = 0.4
    }
    with objLaserOffV {
        killer = true
        sprite_index = sprLaserOnV
        image_speed = 0.4
    }
    with objLaserOnH {
        killer = false
        sprite_index = sprLaserOffH
        image_speed = 0.1
    }
    with objLaserOnV {
        killer = false
        sprite_index = sprLaserOffV
        image_speed = 0.1
    }
} else {
    with objLaserSwitch image_index = 0
    with objLaserOffH {
        killer = false
        sprite_index = sprLaserOffH
        image_speed = 0.1
    }
    with objLaserOffV {
        killer = false
        sprite_index = sprLaserOffV
        image_speed = 0.1
    }
    with objLaserOnH {
        killer = true
        sprite_index = sprLaserOnH
        image_speed = 0.4
    }
    with objLaserOnV {
        killer = true
        sprite_index = sprLaserOnV
        image_speed = 0.4
    }
}

