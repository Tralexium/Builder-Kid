/// @description scrAlexSaveGame(saveMap)
/// @param saveMap
function scrAlexSaveGame(_save_map) {
	global.saveRoom = room_get_name(room);
	_save_map.alex_list_of_towers = global.list_of_towers;
	_save_map.alex_remaining_health = global.remaining_health;
	_save_map.alex_remaining_cash = global.remaining_cash;
	_save_map.alex_last_wave_number = global.last_wave_number;
}
