/// @description  Rebuild all the towers from the last wave

var list_size = ds_list_size(global.list_of_towers);

for(var i=0; i<list_size; i++) {
    var tower_map = global.list_of_towers[| i];
    var tower_index = tower_map[? "tower_index"];
    var tower_x = tower_map[? "tower_x"];
    var tower_y = tower_map[? "tower_y"];
    
    var inst = instance_create(tower_x, tower_y, tower_index);
        inst.active = true;
}

