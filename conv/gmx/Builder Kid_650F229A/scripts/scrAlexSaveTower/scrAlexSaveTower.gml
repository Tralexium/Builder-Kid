/// @description scrAlexSaveTower(x, y, tower_index)
/// @param x
/// @param  y
/// @param  tower_index

var t_x = argument[0];
var t_y = argument[1];
var t_index = argument[2];

var t_map = ds_map_create();
t_map[? "tower_x"] = t_x;
t_map[? "tower_y"] = t_y;
t_map[? "tower_index"] = t_index;
ds_list_add(global.list_of_towers, t_map);
ds_list_mark_as_map(global.list_of_towers, ds_list_size(global.list_of_towers)-1);
