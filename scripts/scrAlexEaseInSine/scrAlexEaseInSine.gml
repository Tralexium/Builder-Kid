/// @description  scrAlexEaseInSine(time,start,end,duration)
/// @param time
/// @param start
/// @param end
/// @param duration
function scrAlexEaseInSine(argument0, argument1, argument2, argument3) {
	return (argument2-argument1) * (1 - cos(argument0 / argument3 * (pi / 2))) + argument1;



}
