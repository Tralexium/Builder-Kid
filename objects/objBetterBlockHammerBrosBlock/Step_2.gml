with (other) {
moveSine += rotDir*lerp(pi/100, pi/190, abs(x-centerX)/domain);
if (moveSine >= 15*pi/8){
    moveSine = 15*pi/8;
    rotDir = -1;
}else if (moveSine <= 9*pi/8){
    moveSine = 9*pi/8;
    rotDir = 1;
}

x = centerX + lengthdir_x(domain,radtodeg(moveSine));
y = centerY - (range) + lengthdir_y(range,radtodeg(moveSine));

}
