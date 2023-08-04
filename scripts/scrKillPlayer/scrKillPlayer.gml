function scrKillPlayer() {
	//kills the player
	if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
	{
	    if (objPlayer.iframes > 0) { exit }; //player is invincible if he has iframes
	    if !instance_exists(objYoshiControl)
	    {
	        if (global.gameStarted) //normal death
	        {
	            global.deathSound = audio_play_sound(sndDeath,0,false);
            
	            if (!global.muteMusic)  //play death music
	            {
	                if (global.deathMusicMode == 1) //instantly pause the current music
	                {
	                    audio_pause_sound(global.currentMusic);
                    
	                    global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
	                }
	                else if (global.deathMusicMode == 2)    //fade out the current music
	                {                
	                    with (objWorld)
	                        event_user(0);  //fades out and stops the current music
                    
	                    global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
	                }
	            }
            
	            with (objPlayer)
	            {
	                instance_create(x,y,objBloodEmitter);
	                instance_destroy();
	            }
            
	            instance_create(0,0,objGameOver);
            
	            global.death += 1; //increment deaths
                
	            scrSaveGame(false); //save death/time
	        }
	        else    //death in the difficulty select room, restart the room
	        {
	            with(objPlayer)
	                instance_destroy();
                
	            room_restart();
	    }
	    } // yoshi control exists
	    else {
	        audio_play_sound(sndYoshi2,0,0);
	        with(objYoshiControl){instance_destroy()}
	        objPlayer.mask_index=sprPlayerMask
	        instance_create(objPlayer.x,objPlayer.y,objYoshiLost)
	        objPlayer.iframes=25
	        objPlayer.maxSpeed=3
	        objPlayer.maxVspeed=9
	        objPlayer.jump = 8.5*global.grav
	        objPlayer.djump = 1
	        objPlayer.y-=16*global.grav
	    }
	}



}
