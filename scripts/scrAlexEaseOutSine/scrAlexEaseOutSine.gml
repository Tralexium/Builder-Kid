/// @description  scrAlexEaseOutSine(time,start,end,duration)
/// @param time
/// @param start
/// @param end
/// @param duration
function scrAlexEaseOutSine(argument0, argument1, argument2, argument3) {
	return (argument2-argument1) * sin(argument0 / argument3 * (pi / 2)) + argument1;



}
