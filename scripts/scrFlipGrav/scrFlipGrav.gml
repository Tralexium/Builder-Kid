/// @description flips the current gravity
function scrFlipGrav() {

	if instance_exists(objYoshiControl) { exit } //abort script if player is yoshi

	//set gravity
	global.grav = -global.grav;

	//flip the player
	with (objPlayer)
	{
	    djump = 1;
	    vspeed = 0;
    
	    jump = abs(jump) * global.grav;
	    jump2 = abs(jump2) * global.grav;
	    gravity = abs(gravity) * global.grav;
    
	    scrSetPlayerMask();
    
	    if !global.dotkid {
	        y += 4 * global.grav;
	    }
	}



}
