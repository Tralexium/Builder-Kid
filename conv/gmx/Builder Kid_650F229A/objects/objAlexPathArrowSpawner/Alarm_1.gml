/// @description  Spawn an arrow on both ends

var arrow = instance_create(112, -24, objAlexPathArrow);
with(arrow) {
    path_start(other.path, other.arrow_speed, path_action_stop, false);
    image_blend = $3fab63;
}

arrow = instance_create(112, -24, objAlexPathArrow);
with(arrow) {
    path_start(other.path, other.arrow_speed, path_action_stop, false);
    image_blend = $3945e6;
    path_position = .8
    image_alpha = 0;
}


arrows_spawned--;
if(arrows_spawned > 0)
    alarm[1] = arrow_seperation;

