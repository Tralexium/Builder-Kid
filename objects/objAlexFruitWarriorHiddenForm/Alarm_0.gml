/// @description  Re-appear

var inst = instance_create(x, y, objAlexEnemyFruitWarrior);

with(inst) {
    saved_path_pos = other.path_position;
    hp = other.hp;
    can_hide = false;
}

audio_play_sound(sndAlexEnemyAppear, 0, false)

event_user(0);
instance_destroy();

