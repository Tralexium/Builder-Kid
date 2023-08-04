/// @description  Add value to tower controller

with(objAlexPlayer) {
    hp += other.value;
}

audio_stop_sound(pickup_sound)
audio_play_sound(pickup_sound, 0, false)
instance_destroy();

