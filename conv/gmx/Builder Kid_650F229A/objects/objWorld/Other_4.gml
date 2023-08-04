/// @description room checks

if (!instance_exists(objPlayMusic))  //make sure the play music object isn't in the current room
    scrGetMusic();  //find and play the proper music for the current room

room_speed = 50;    //make sure game is running at the correct frame rate
scrSetRoomCaption();    //make sure window caption stays updated

// ADDED: set dotkid and playerV to false on each room start
global.dotkid = false
global.playerV = false

//ADDED: set global.count to 0 to reset oscillation cycles
global.count = 0

with objPlayer scrSetPlayerMask()
// ADDED: walk the ceiling - remove invert controls if not upside down
if global.grav = 1 {
    global.invertControls = false
}

