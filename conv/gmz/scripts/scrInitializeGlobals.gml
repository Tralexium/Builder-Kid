///initializes all global variables needed for the game

scrSetGlobalOptions();       //initialize global game options

// ALEX MODIFIED
scrAlexInitGlobals();


global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = "";
global.savePlayerX = 0;
global.savePlayerY = 0;
global.grav = 1;
global.saveGrav = 1;
global.dotkid = false; // ADDED: whether or not player is dotkid
global.vine7 = 0; //ADDED: jungle adventure vines
global.playerV = false; // ADDED: vvvvvv kid
global.invertControls = false; //ADDED: invert controls for walk the ceiling 
global.count = 0; //ADDED: oscillation timer

global.psys = part_system_create();
part_system_depth(global.psys,-100);
global.vinePart = part_type_create();
part_type_shape(global.vinePart,pt_shape_spark);
part_type_color2(global.vinePart,16711808,8388672);
part_type_alpha2(global.vinePart,0.9492,0.9222);
part_type_life(global.vinePart,20.0000,30.0000);
part_type_size(global.vinePart,0.1907,0.2147,0.0010,0.0124);
part_type_speed(global.vinePart,2.8002,3.1302,-0.0693,-0.1858);
part_type_direction(global.vinePart,0.0000,360.0000,0.0000,0.3559);
part_type_orientation(global.vinePart,0.0000,360.0000,-0.7222,2.4790,0);
part_type_gravity(global.vinePart,0.0000,270.0000);
part_type_blend(global.vinePart,true);
//ADDED: Jungle adventure particles

for (var i = global.secretItemTotal-1; i >= 0; i--)
{
    global.secretItem[i] = false;
    global.saveSecretItem[i] = false;
}

for (var i = global.bossItemTotal-1; i >= 0; i--)
{
    global.bossItem[i] = false;
    global.saveBossItem[i] = false;
}

global.gameClear = false;
global.saveGameClear = false;

for (var i = 99; i >= 0; i--)
{
    global.trigger[i] = false;
}

global.gameStarted = false;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = false;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = false;        //keeps track of whether or not to autosave the next time the player is created
global.noDeath = false;         //keeps track of whether to give the player god mode
global.infJump = false;         //keeps track of whether to give the player infinite jump

global.gamePaused = false;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = false;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out

global.menuSelectPrev[0] = 0;     //keeps track of the previously selected option when navigating away from the difficulty menu
global.menuSelectPrev[1] = 0;     //keeps track of the previously selected option when navigating away from the options menu

//get the default window size
global.windowWidth = surface_get_width(application_surface);
global.windowHeight = surface_get_height(application_surface);

//keeps track of previous window position/size when display_reset is used for setting vsync
global.windowXPrev = 0;
global.windowYPrev = 0;
global.windowWidthPrev = 0;
global.windowHeightPrev = 0;

display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));  //set the correct gui size for the Draw GUI event

global.controllerMode = false;  //keeps track of whether to use keyboard or controller
global.controllerDelay = -1;    //handles delay between switching between keyboard/controller so that the player can't use both at the same time

randomize();    //make sure the game starts with a random seed for RNG
