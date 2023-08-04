event_inherited();
timer = -1;
active = true;
falling = false;
image_speed = 0;
xOrigin = x; //shaking
yOrigin = y; //shaking
//When the object shakes, it actually moves its position instead of just drawing its sprite at an offset to test Better Block movement.
//If you want to actually use these blocks, I recommend changing actualShake to false. Otherwise, you will encounter some weird behavior when the player is standing on two at once.
actualShake = false;
shakeXOff = 0;
shakeYOff = 0;

