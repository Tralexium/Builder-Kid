//Reduce red hp bar 1 pixel every frame
if(curHP > bossHP){

    //Can be adjusted to speed up or slow down the red hp bar speed
    scale--;
}

//Stops the red hp bar reduction if it meets up with the hp bar
if(scale / maxscale <= bossHP / maxHP){
    curHP = bossHP;
}

image_xscale = scale;

