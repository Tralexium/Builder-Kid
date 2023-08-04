/// @description scrAlexShake(distance, duration, x_intensity, y_intensity)
/// @param distance
/// @param  duration
/// @param  x_intensity
/// @param  y_intensity
function scrAlexShake(argument0, argument1, argument2, argument3) {

	var dist = argument0;
	var dur = argument1;
	var x_i = argument2;
	var y_i = argument3;

	var inst = instance_create(0, 0, objAlexScreenShake);
	    inst.distance = dist;
	    inst.duration = dur;
	    inst.x_intensity = x_i;
	    inst.y_intensity = y_i;



}
