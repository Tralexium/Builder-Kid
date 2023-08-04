if global.playerV = true {
    global.playerV = false
    audio_play_sound(sndVCoin, 0, false)
    instance_destroy()
}

