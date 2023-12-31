/// @description scrAlexMakeParticle(x, y, life, sprite, image_spd, direction, speed, shrink[bool], fade[bool], depth_check[bool])
/// @param x
/// @param  y
/// @param  life
/// @param  sprite
/// @param  image_spd
/// @param  direction
/// @param  speed
/// @param  shrink[bool]
/// @param  fade[bool]
/// @param  depth_check[bool]
function scrAlexMakeParticle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {

	var xx = argument0;
	var yy = argument1;
	var life = argument2;
	var spr = argument3;
	var image_spd = argument4;
	var dir = argument5;
	var spd = argument6;
	var shrink = argument7;
	var fade = argument8;
	var depth_check = argument9;


	var p = instance_create(xx, yy, objAlexParticle);
	    p.life = life;
	    p.sprite_index = spr;
	    p.image_speed = image_spd;
	    p.direction = dir;
	    p.speed = spd;
	    p.shrink = shrink;
	    p.fade = fade;
	    p.depth_check = depth_check;

    
	return p



}
