if other.numJumps != 3 {
    other.numJumps = 3
    if other.djump == 0 {
        other.djump = 0.5
    }
    effect = true
    xs = 1
    ys = 1
    aa = 1
    audio_play_sound(sndGainStar, 0, false)
}

