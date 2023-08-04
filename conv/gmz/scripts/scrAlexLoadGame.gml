///scrAlexLoadGame(saveMap)
// Load the last state of the game

var saveMap = argument[0]

// Convert each tower sting info back into a map
var list_of_towers_string = ds_map_find_value(saveMap,"alex_list_of_towers");
// Populate the global list of towers with the string version of each tower
ds_list_read(global.list_of_towers, list_of_towers_string)

// Decode the strings and re-populate the global list of towers
var size = ds_list_size(global.list_of_towers)
for(var i=0; i<size; i++) {
    var tower_map_data = ds_map_create();
    ds_map_read(tower_map_data, global.list_of_towers[| i])
    global.list_of_towers[| i] = tower_map_data;
}

global.remaining_health = ds_map_find_value(saveMap,"alex_remaining_health");
global.remaining_cash = ds_map_find_value(saveMap,"alex_remaining_cash");
global.last_wave_number = ds_map_find_value(saveMap,"alex_last_wave_number");
