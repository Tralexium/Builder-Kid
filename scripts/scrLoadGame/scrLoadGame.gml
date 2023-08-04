/// @description scrLoadGame(loadfile)
/// @param loadfile
///loads the game
///argument0 - sets whether or not to read the save file when loading the game
function scrLoadGame(argument0) {

	var loadFile = argument0;

	//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
	if (loadFile)
	{
	    //load the save map
    	var saveValid = true;   //keeps track of whether or not the save being loaded is valid
	    var saveMap = json_parse(LoadString("Data\\save"+string(global.savenum)));
    
  
	    if (saveMap != pointer_null)  //check if the save map loaded correctly
	    {
	        scrAlexLoadGame(saveMap);
	        global.death = saveMap.death;
	        global.gameTime = saveMap.gameTime;
	        global.gameTimeMicro = saveMap.gameTimeMicro;
	        global.difficulty = saveMap.difficulty;
	        global.saveRoom = saveMap.saveRoom;
	        global.savePlayerX = saveMap.savePlayerX;
	        global.savePlayerY = saveMap.savePlayerY;
	        global.saveGrav = saveMap.saveGrav;
			global.saveGameClear = saveMap.saveGameClear;

	        if (is_string(global.saveRoom))   //check if the saved room loaded properly
	        {
	            if (!room_exists(asset_get_index(global.saveRoom)))  //check if the room index in the save is valid
	                saveValid = false;
	        }
	        else
	        {
	            saveValid = false;
	        }
        
	        for (var i = 0; i < global.secretItemTotal; i++)
	        {
	            global.saveSecretItem[i] = saveMap.saveSecretItem[i];
	        }
        
	        for (var i = 0; i < global.bossItemTotal; i++)
	        {
	            global.saveBossItem[i] = saveMap.saveBossItem[i];
	        }
	    }
	    else
	    {
	        //save map didn't load correctly, set the save to invalid
	        saveValid = false;
	    }
    
	    if (!saveValid) //check if the save is invalid
	    {
	        //save is invalid, restart the game
        
	        show_message("Save invalid!");
        
	        scrRestartGame();
        
	        exit;
	    }
	}

	//set game variables and set the player's position

	with (objPlayer) //destroy player if it exists
	    instance_destroy();

	global.gameStarted = true;  //sets game in progress (enables saving, restarting, etc.)
	global.noPause = false;     //disable no pause mode
	global.autosave = false;    //disable autosaving since we're loading the game

	global.grav = global.saveGrav;

	for (var i = 0; i < global.secretItemTotal; i++)
	{
	    global.secretItem[i] = global.saveSecretItem[i];
	}

	for (var i = 0; i < global.bossItemTotal; i++)
	{
	    global.bossItem[i] = global.saveBossItem[i];
	}

	global.gameClear = global.saveGameClear;

	instance_create(global.savePlayerX,global.savePlayerY,objPlayer);

	room_goto(asset_get_index(global.saveRoom));



}
