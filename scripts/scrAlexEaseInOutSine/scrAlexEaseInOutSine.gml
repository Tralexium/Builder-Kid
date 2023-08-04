/// @description  scrAlexEaseInOutSine(time,start,end,duration)
/// @param time
/// @param start
/// @param end
/// @param duration
function scrAlexEaseInOutSine(argument0, argument1, argument2, argument3) {
	return (argument2-argument1) * 0.5 * (1 - cos(pi * argument0 / argument3)) + argument1;



}
