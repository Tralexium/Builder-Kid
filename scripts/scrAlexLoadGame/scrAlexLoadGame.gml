/// @description scrAlexLoadGame(saveMap)
/// @param saveMap
function scrAlexLoadGame(_save_map) {
	global.list_of_towers = _save_map.alex_list_of_towers
	global.remaining_health = _save_map.alex_remaining_health;
	global.remaining_cash = _save_map.alex_remaining_cash;
	global.last_wave_number = _save_map.alex_last_wave_number;
}
