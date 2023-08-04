function scrPlayerJump() {
	if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
	{
	    vspeed = -jump;
	    djump = 1;
	    audio_play_sound(sndJump,0,false);
    
	    // ADDED: Jump spike movement
	    with objJumpSpike {
	        event_user(0)
	    }
	}
	else if ((djump > 0 || place_meeting(x,y+(global.grav),objWater2) || (global.infJump || global.debugInfJump))
	        && numJumps != 1) // ADDED: single jump only check, and CHANGED djump == 1 to djump > 0
	{
	    vspeed = -jump2;
	    sprite_index = sprPlayerJump;
	    audio_play_sound(sndDJump,0,false);
    
	    if (!place_meeting(x,y+(global.grav),objWater3)) {
	        //take away the player's double jump
	        // CHANGED: This line used to be djump = 0, but is changed to allow for triple jump.
	        if numJumps == 2 {
	            djump = 0
	        } else if numJumps == 3 {
	            djump -= 0.5
	        }
	    } else
	        djump = 1;  //replenish djump if touching water3
        
	    // ADDED: Jump spike movement
	    with objJumpSpike {
	        event_user(0)
	    }
	}



}
