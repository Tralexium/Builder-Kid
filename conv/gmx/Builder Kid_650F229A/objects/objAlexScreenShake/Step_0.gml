/// @description  Shake the screen

x_t += x_intensity
y_t += y_intensity

__view_set( e__VW.XView, 0, dsin(x_t)*distance );
__view_set( e__VW.YView, 0, dsin(y_t)*distance );

var dist_decrease = distance/duration;
distance -= dist_decrease;

