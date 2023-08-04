/// @description  Reset globals back to defaults

array_resize(global.list_of_towers, 0)
global.remaining_health = global.starting_health;
global.remaining_cash = global.starting_cash;
global.last_wave_number = global.starting_wave;

scrSaveGame(false);

