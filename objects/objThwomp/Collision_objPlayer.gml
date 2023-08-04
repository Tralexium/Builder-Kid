if other.y>y+32 or !instance_exists(objYoshiControl)
{
with(other){scrKillPlayer()}
}
else {
    audio_play_sound(sndYoshiJump,0,0);
    if (scrButtonCheck(global.jumpButton))
        with(other){vspeed=-15}
    else
        with(other){vspeed=-5}
}

