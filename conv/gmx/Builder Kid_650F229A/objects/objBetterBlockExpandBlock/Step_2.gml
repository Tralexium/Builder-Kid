if (move != 0 && moveTime != 0){
    if (horizontal){
        x += move*range/moveTime;
        if (move > 0 && abs(x-xstart) >= abs(range)){
            x = xstart + range;
            move = 0;
            alarm[1] = timer;
        }
        if (move < 0 && ((range > 0 && x <= xstart) || (range < 0 && x >= xstart))){
            x = xstart;
            move = 0;
            alarm[1] = timer;
        }
    }else{
        y += move*range/moveTime;
        if (move > 0 && abs(y-ystart) >= abs(range)){
            y = ystart + range;
            move = 0;
            alarm[1] = timer;
        }
        if (move < 0 && ((range > 0 && y <= ystart) || (range < 0 && y >= ystart))){
            y = ystart;
            move = 0;
            alarm[1] = timer;
        }
    }
}

