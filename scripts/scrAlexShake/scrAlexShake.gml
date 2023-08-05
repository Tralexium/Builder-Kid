/// @description scrAlexShake(distance, duration, x_intensity, y_intensity)
/// @param distance
/// @param  duration
/// @param  x_intensity
/// @param  y_intensity
function scrAlexShake(_dist, _dur, _x_strength, _y_strength) {

	var inst = instance_create(0, 0, objAlexScreenShake);
	    inst.distance = _dist;
	    inst.duration = _dur;
	    inst.x_intensity = _x_strength;
	    inst.y_intensity = _y_strength;
}
