/// @description go to the next room
if global.grav != grav {
    scrFlipGrav();
}

with (objPlayer)
    instance_destroy();

room_goto_next();

