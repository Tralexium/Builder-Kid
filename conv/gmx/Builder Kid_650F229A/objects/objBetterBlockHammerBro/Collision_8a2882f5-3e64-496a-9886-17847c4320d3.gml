if (hp > 0 && iframes <= 0){
    hp --;
    if (hp <= 0){
        event_user(0);
    }else{
        iframes = 23;
        audio_play_sound(sndBossHit,0,0);
    }
}
with other instance_destroy();

