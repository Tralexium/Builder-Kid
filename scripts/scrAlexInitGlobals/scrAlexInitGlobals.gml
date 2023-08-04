function scrAlexInitGlobals() {
	// Change these values to set the starting game stats
	global.starting_health = 50;
	global.starting_cash = 70;
	global.starting_wave = 0;

	global.keep_data = true;    // When set to false it resets
	                            // all globals back to their defaults

	global.list_of_towers = [];
	global.remaining_health = global.starting_health;
	global.remaining_cash = global.starting_cash;
	global.last_wave_number = global.starting_wave;



}
