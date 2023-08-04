if dontCollect { exit }
if collected=0 {
    collected=1;
    global.secretItem[itemID] = 1;
    audio_play_sound(sndGetItem,0,0);
    shrink=true
}

