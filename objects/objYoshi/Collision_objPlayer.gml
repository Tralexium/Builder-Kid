if instance_exists(objYoshiControl) || global.dotkid || global.playerV {
    exit
}
if other.vspeed>0
{
    instance_create(0,0,objYoshiControl)
    audio_play_sound(sndYoshi,0,0)
    instance_destroy()
}

