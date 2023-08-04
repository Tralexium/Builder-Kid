if spin=0{
with(other){instance_destroy()};
audio_play_sound(sndCamera,0,0);
spin=true;
fade=true;
if instance_exists(objPlayer){instance_create(objPlayer.x,objPlayer.y,objCameraStatue)}
}

