platforms = 4; //number of platforms
platform[0] = noone;
pushSFX = noone;
dist = 80; //distance from ctrl to platforms
angle = 0; //angle offset
chains = 4; //number of chains to draw from ctrl to the platform (does not include the center chain)

horizontal = true; //draw horizontal path and move horizontally
vertical = true;  //draw vertical path and move vertically

//rotation
playerOn = false;
rotate = true; //can be used to stop the wheel from rotating
rotMult = 0.1; //multiplier to the equation (1 - abs(other.y+8 - y)/dist); maximum degree increase per frame
rotSpd = 0; //rotational speed
rotCap = 4.5; //max speed
frict = 0.032; //subtract from rotation speed when player leaves

//movement values
move = true; //if false, the wheel will not move but will still rotate & draw a path; can be used to stop the wheel from moving
spdMult = 0.15; //multiplier (rotSpd * spdMult = spd)
spd = 0; //speed
spdCap = 4.5; //max speed; if negative, its speed will not be capped

//min x value must be less than max x value
minX = x - 80; //left end of the track
maxX = x + 80; //right end of the track

//if the wheel only moves vertically, leftY should be where you want the wheel to start, and rightY should be the end.
//if leftY is less than rightY, rotating the wheel clockwise will move it down. Otherwise, rotating it clockwise will move it up.
leftY = y - 80; //left end of the track
rightY = y + 80; //right end of the track

//positioning
trackPos = 0; //Percentage representing progress from min to max values on track. 0 = leftmost; 1 = rightmost
trackSize = 0; //distance from min to max values

image_speed = 0;
alarm[0] = 1;

