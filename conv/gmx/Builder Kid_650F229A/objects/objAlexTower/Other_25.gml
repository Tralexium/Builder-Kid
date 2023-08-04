/// @description  Sell tower

var refund_amnt = round(cost/1.5)

while(refund_amnt > 0) {
    if(refund_amnt >= 10) {
        instance_create(x, y, objAlexGoldenCoin);
        refund_amnt -= 10;
        continue;
    }
    if(refund_amnt >= 5) {
        instance_create(x, y, objAlexSilverCoin);
        refund_amnt -= 5;
        continue;
    } 
    else {
        instance_create(x, y, objAlexBronzeCoin);
        refund_amnt -= 1;
    }
    
}

audio_play_sound(sndAlexTowerSold, 0, false);
instance_destroy();

