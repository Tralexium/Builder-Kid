/// @description refresh jump

if active {
    with objToggleShootRefresherR {
        if active {active = false; image_index=1} else {active = true; image_index=0}
    }
    audio_play_sound(sndShootRefresher,0,0)
    with objPlayer djump = 1
}

