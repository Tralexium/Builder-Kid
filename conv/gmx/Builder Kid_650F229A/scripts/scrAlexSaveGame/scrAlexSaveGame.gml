/// @description scrAlexSaveGame(saveMap)
/// @param saveMap
// Save the status of the current game

var saveMap = argument[0]

// Convert tower maps into strings to prevent read issues later on
var size = ds_list_size(global.list_of_towers)
ds_list_clear(global.save_list_of_towers);
for(var i=0; i<size; i++) {
    var map_to_string = ds_map_write(global.list_of_towers[| i])
    global.save_list_of_towers[| i] = map_to_string;
}

// Convert list into a string as well
var save_list_of_towers_to_string = ds_list_write(global.save_list_of_towers)

ds_map_add(saveMap, "alex_list_of_towers", save_list_of_towers_to_string);
ds_map_add(saveMap, "alex_remaining_health", global.remaining_health);
ds_map_add(saveMap, "alex_remaining_cash", global.remaining_cash);
ds_map_add(saveMap, "alex_last_wave_number", global.last_wave_number);
