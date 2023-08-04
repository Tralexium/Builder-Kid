/// @description  scrAlexEaseInOutQuad(time,start,end,duration)
/// @param time
/// @param start
/// @param end
/// @param duration
function scrAlexEaseInOutQuad(argument0, argument1, argument2, argument3) {
	argument0 /= argument3 * 0.5;

	if (argument0 < 1)
	{
	    return (argument2-argument1) * 0.5 * argument0 * argument0 + argument1;
	}

	return (argument2-argument1) * -0.5 * (--argument0 * (argument0 - 2) - 1) + argument1;



}
