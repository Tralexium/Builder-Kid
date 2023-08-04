/// @description Manage Collision Detection of Better Blocks and Platforms

if (instance_exists(objPlayer)){
    with (objPlayer) //reset the riding variable
        riding = noone;
    
    if (instance_exists(objBetterBlock) || instance_exists(objBetterMovingPlatform)){
        with (objBetterBlock) //Horizontal Movement
            event_user(0);
        with (objBetterBlock) //Vertical movement
            event_user(1);
        with (objBetterBlock) //Platform behavior
            event_user(2);
        with (objBetterBlock) //Set Values for next frame
            event_user(3);
            
        with (objBetterMovingPlatform)
            event_user(0);
            
        with (objBow)
            event_user(0); //update bow position
            
        with (objPlayer){
            hPush = 0;
            PhSpd = 0;
            PvSpd = 0;
        }
    }
    ///Kill player if stuck in block, after EVERY Better Block runs their end step code
    with (objBlock){
        if (instance_exists(objPlayer)){
            //GameMaker has an interesting system of rounding numbers
            var t_xoffset = 0;
            var t_yoffset = 0;
            if (x mod 1 == 0.5)
                t_xoffset = sign(x - objPlayer.x)/10;
                
            if (y mod 1 == 0.5)
                t_yoffset = sign(y - objPlayer.y)/10;
                
            if (scrIsBlock() && place_meeting(x + t_xoffset, y + t_yoffset, objPlayer))
                scrKillPlayer();
        }
    }
}else{
    with (objBetterBlock)
        wasCarrying = false;
    with (objBetterMovingPlatform)
        wasCarrying = false;
}

