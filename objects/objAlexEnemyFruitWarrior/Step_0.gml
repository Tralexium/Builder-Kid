/// @description  Hide

if(hp <= max_hp/2 && can_hide) {
    image_alpha = .5;
    mask_index = -1;
    event_user(0);
    
    var inst = instance_create(x, y, objAlexFruitWarriorHiddenForm);

    with(inst) {
        saved_path_pos = other.path_position;
        alarm[0] = other.hide_duration;
        hp = other.hp;        
    }
    
    audio_play_sound(sndAlexEnemyHidden, 0, false)
    
    instance_destroy();
}

