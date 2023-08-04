frozen = false; //sets if the player can move or not

jump = 8.5 * global.grav; //set how fast the player jumps
jump2 = 7 * global.grav; //sets how fast the player double jumps
gravity = 0.4 * global.grav; //player gravity

djump = 1; //allow the player to double jump as soon as he spawns
numJumps = 2 // ADDED: 2 for normal double jump, 1 for only single jumps, 3 for triple jump. See scrPlayerJump
maxSpeed = 3;   //max horizontal speed
maxVspeed = 9;  //max vertical speed
image_speed = 0.2; //initial speed of animation
onPlatform = false; //sets if player is currently standing on a platform

xScale = 1; //sets the direction the player is facing (1 is facing right, -1 is facing left)

scrSetPlayerMask(); //set the player's hitbox

if (global.difficulty == 0 && global.gameStarted)   //create the player's bow
    instance_create(x,y,objBow);

if (global.autosave) //save the game if currently set to autosave
{
    scrSaveGame(true);
    global.autosave = false;
}

//Custom variables
highGrav = false
lowGrav = false
lowGravVine = false
highSpeed = false
vinegrav = 0
vinespeed = 0
count = 0
iframes = 0

//Better Block
//used to check if riding a platform will put the player into/through a block
platCheck = 0;
platCounter = 0;
//the Better Platform/Block which the player is on, if there is one
riding = noone;
//records player movement
PhSpd = 0;
PvSpd = 0;
//amount pushed by Better Blocks (used to carry the player)
hPush = 0;

