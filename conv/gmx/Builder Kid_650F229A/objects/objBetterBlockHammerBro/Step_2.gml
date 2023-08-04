if (hp > 0){
    if iframes > 0 iframes --;
    if (instance_exists(stand)){
        x = stand.x + 32;
        y = stand.y;
    }
}else if (y > 608) instance_destroy();

