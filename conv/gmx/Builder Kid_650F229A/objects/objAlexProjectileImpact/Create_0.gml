image_speed = .5
image_xscale = choose(1, -1)
image_yscale = choose(1, -1)

audio_stop_sound(sndAlexProjectileHit)
audio_sound_pitch(sndAlexProjectileHit, random_range(0.9, 1.1))
audio_play_sound(sndAlexProjectileHit, 0, false)

