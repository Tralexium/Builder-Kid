if ((x < 0 || x > room_width || y < 0 || y > room_height) && global.edgeDeath && !place_meeting(x,y,objScreenWrap))  //check if player has left the room
    scrKillPlayer();
//ADDED: instant acceleration for vvvvvv kid
if(global.playerV) 
{
    if(global.grav=1 && vspeed !=0) { vspeed = maxVspeed }
    if(global.grav=-1 && vspeed !=0) { vspeed = -maxVspeed }
}
    
//update player sprite
if (global.playerAnimationFix)
{
    //block/vine checks
    if (place_free(x,y+global.grav) && !instance_exists(riding)) var notOnBlock = true else var notOnBlock = false
    var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);
    var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
    
    if (!onVineR && !onVineL)   //not touching any vines
    {
        if (onPlatform || !notOnBlock)  //standing on something
        {
            //check if moving left/right
            var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
            var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));
            
            if ((L || R) && !frozen)
            {
                sprite_index = sprPlayerRunning;
                image_speed = 1/2;
            }
            else
            {
                sprite_index = sprPlayerIdle;
                image_speed = 1/5;
            }
        }
        else    //in the air
        { 
            if ((vspeed * global.grav) < 0)
            {
                sprite_index = sprPlayerJump;
                image_speed = 1/2;
            }
            else
            {
                sprite_index = sprPlayerFall;
                image_speed = 1/2;
            }
        }
    }
    else    //touching a vine
    {
        sprite_index = sprPlayerSliding;
        image_speed = 1/2;
    }
}


///Set up Player variables for objBetterBlock and objBetterMovingPlatform
PhSpd = (x - xprevious);
PvSpd = (y - yprevious);

