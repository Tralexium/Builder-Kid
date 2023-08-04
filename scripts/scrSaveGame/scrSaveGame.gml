/// @description scrSaveGame(saveposition)
/// @param saveposition
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time
function scrSaveGame(argument0) {

	var savePosition = argument0;

	//save the player's current location variables if the script is currently set to (we don't want to save the player's location if we're just updating death/time)
	if (savePosition)
	{    
	    global.saveRoom = room_get_name(room);
	    global.savePlayerX = objPlayer.x;    
	    global.savePlayerY = objPlayer.y;
	    global.saveGrav = global.grav;
    
	    //check if player is saving inside of a wall or in the ceiling when the player's position is floored to prevent save locking
	    with (objPlayer)
	    {
	        if (!place_free(floor(global.savePlayerX),global.savePlayerY))
	        {
	            global.savePlayerX += 1;
	        }
        
	        if (!place_free(global.savePlayerX,floor(global.savePlayerY)))
	        {
	            global.savePlayerY += 1;
	        }
        
	        if (!place_free(floor(global.savePlayerX),floor(global.savePlayerY)))
	        {
	            global.savePlayerX += 1;
	            global.savePlayerY += 1;
	        }
	    }
    
	    //floor player position to match standard engine behavior
	    global.savePlayerX = floor(global.savePlayerX);
	    global.savePlayerY = floor(global.savePlayerY);
    
	    for (var i = 0; i < global.secretItemTotal; i++)
	    {
	        global.saveSecretItem[i] = global.secretItem[i];
	    }
    
	    for (var i = 0; i < global.bossItemTotal; i++)
	    {
	        global.saveBossItem[i] = global.bossItem[i];
	    }
    
	    global.saveGameClear = global.gameClear;
	}

	//create a map for save data
	var saveMap = {};

	scrAlexSaveGame(saveMap);
	saveMap.death = global.death;
	saveMap.gameTime = global.gameTime;
	saveMap.gameTimeMicro = global.gameTimeMicro;
	saveMap.difficulty = global.difficulty;
	saveMap.saveRoom = global.saveRoom;
	saveMap.savePlayerX = global.savePlayerX;
	saveMap.savePlayerY = global.savePlayerY;
	saveMap.saveGrav = global.saveGrav;
	saveMap.saveGameClear = global.saveGameClear;
	
	for (var i = 0; i < global.secretItemTotal; i++)
	{
	    saveMap.saveSecretItem[i] = global.saveSecretItem[i];
	}

	for (var i = 0; i < global.bossItemTotal; i++)
	{
	    saveMap.saveBossItem[i] = global.saveBossItem[i];
	}

	// Parse to json and save it to a file
	var _json_string = json_stringify(saveMap)
	SaveString(_json_string, "Data\\save"+string(global.savenum));
}
