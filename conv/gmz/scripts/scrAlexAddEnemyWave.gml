///scrAlexAddEnemyWave(enemy_1, amount_1, seperation_1, spawn_delay_1, enemy_2, amount_2, seperation_2, spawn_delay_2, enemy_3, amount_3, seperation_3, spawn_delay_3)

var segment_count = 1;

// 1st Segment
segm_enemy[0] = argument[0];
segm_amount[0] = argument[1];
segm_seperation[0] = argument[2];
segm_spawn_delay[0] = argument[3];

// 2nd Segment
if(argument_count > 4) {
    segm_enemy[1] = argument[4];
    segm_amount[1] = argument[5];
    segm_seperation[1] = argument[6];
    segm_spawn_delay[1] = argument[7];
    segment_count++;
}

// 3rd Segment
if(argument_count > 8) {
    segm_enemy[2] = argument[8];
    segm_amount[2] = argument[9];
    segm_seperation[2] = argument[10];
    segm_spawn_delay[2] = argument[11];
    segment_count++;
}


var wave = ds_list_create();

// Populate wave with segments
for(var i=0; i<segment_count; i++) {
    var wave_segm = ds_map_create();
    
    wave_segm[? "enemy"] = segm_enemy[i];
    wave_segm[? "amount"] = segm_amount[i];
    wave_segm[? "seperation"] = segm_seperation[i];
    wave_segm[? "spawn delay"] = segm_spawn_delay[i];
    ds_list_add(wave, wave_segm);
    ds_list_mark_as_map(wave, 0);
    
}

// Add wave
ds_list_add(global.list_of_waves, wave);
ds_list_mark_as_list(global.list_of_waves, ds_list_size(global.list_of_waves)-1);

// Debug
if(instance_exists(objAlexWaveController))
    return true;
else {
    show_debug_message("objAlexWaveController doesn't exist, cannot assign wave")
    return false;
}
