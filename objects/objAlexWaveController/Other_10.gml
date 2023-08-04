/// @description Stop Fast Forward

if !fast_forward  exit;


fast_forward = false;
audio_play_sound(sndAlexFastForwardStop, 0, false);
audio_stop_sound(sndAlexFastForwardTape);
layer_set_visible("Fast_Forward_Effect", false);
game_set_speed(50, gamespeed_fps);




