if global.playerV = false {
    global.playerV = true
    audio_play_sound(sndVCoin, 0, false)
    instance_destroy()
}

