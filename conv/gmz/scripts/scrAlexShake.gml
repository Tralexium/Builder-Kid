///scrAlexShake(distance, duration, x_intensity, y_intensity)

var dist = argument0;
var dur = argument1;
var x_i = argument2;
var y_i = argument3;

var inst = instance_create(0, 0, objAlexScreenShake);
    inst.distance = dist;
    inst.duration = dur;
    inst.x_intensity = x_i;
    inst.y_intensity = y_i;
