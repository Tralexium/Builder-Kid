/// @description  Add value to tower controller

with(objAlexTowerController) {
    coins += other.value;
    event_user(0);
}

audio_stop_sound(pickup_sound)
audio_sound_pitch(pickup_sound, random_range(.95, 1.05))
audio_play_sound(pickup_sound, 0, false)
instance_destroy();

