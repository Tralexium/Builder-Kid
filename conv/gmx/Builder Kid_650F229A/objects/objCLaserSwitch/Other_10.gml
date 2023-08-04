audio_play_sound(sndCeilingSwitch, 0, false)
if image_index = 0 {
    with objCLaserSwitch {image_index = 1}
    with objCLaserOffH {
        killer = true
        sprite_index = sprCLaserOnH
    }
    with objCLaserOffV {
        killer = true
        sprite_index = sprCLaserOnV
    }
    with objCLaserOnH {
        killer = false
        sprite_index = sprCLaserOffH
    }
    with objCLaserOnV {
        killer = false
        sprite_index = sprCLaserOffV
    }
} else if image_index = 1 {
    with objCLaserSwitch {image_index = 0}
    with objCLaserOffH {
        killer = false
        sprite_index = sprCLaserOffH
    }
    with objCLaserOffV {
        killer = false
        sprite_index = sprCLaserOffV
    }
    with objCLaserOnH {
        killer = true
        sprite_index = sprCLaserOnH
    }
    with objCLaserOnV {
        killer = true
        sprite_index = sprCLaserOnV
    }
}

