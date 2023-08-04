/// @description scrAlexSaveTower(x, y, tower_index)
/// @param x
/// @param  y
/// @param  tower_index
function scrAlexSaveTower() {

	var t_x = argument[0];
	var t_y = argument[1];
	var t_index = argument[2];

	var t_struct = {};
	t_struct.tower_x = t_x;
	t_struct.tower_y = t_y;
	t_struct.tower_index = t_index;
	array_push(global.list_of_towers, t_struct);

}
