/// @description shoot refreshers

var refresher = instance_place(x+hspeed,y,objShootRefresher);

if refresher != noone {
    with refresher event_user(0);
}

