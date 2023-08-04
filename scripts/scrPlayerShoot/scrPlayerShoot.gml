function scrPlayerShoot() {
	if instance_exists(objYoshiControl)
	{
	    audio_play_sound(sndShoot,0,false);
	    audio_play_sound(sndDeath,0,0);
	    with(objYoshiControl){instance_destroy()}
	    objPlayer.mask_index=sprPlayerMask
	    objPlayer.y-=(20*global.grav)
	    a=instance_create(objPlayer.x,objPlayer.y,objYoshiDead)
	    a.image_xscale=objPlayer.xScale
	    objPlayer.maxSpeed=3
	    objPlayer.maxVspeed=9
	    objPlayer.jump = 8.5*global.grav
	    objPlayer.djump = 1
	}
	else if (instance_number(objBullet) < 4)
	{
	    var bulletY = y
	    if global.dotkid {
	        bulletY -= 2*global.grav
	    }
	    instance_create(x,bulletY,objBullet);
	    audio_play_sound(sndShoot,0,false);
	}



}
