/// @description  Reset globals back to defaults

ds_list_clear(global.list_of_towers)
global.remaining_health = global.starting_health;
global.remaining_cash = global.starting_cash;
global.last_wave_number = global.starting_wave;

scrSaveGame(false);

