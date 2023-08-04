if other.numJumps != 2 {
    other.numJumps = 2
    if other.djump == 0.5 {
        other.djump = 0
    }
    effect = true
    xs = 1
    ys = 1
    aa = 1
    audio_play_sound(sndLoseStar, 0, false)
}

