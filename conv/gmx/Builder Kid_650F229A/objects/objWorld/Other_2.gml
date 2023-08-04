/// @description initialize everything

//Create an object to kill the player if they are stuck in a block
instance_create(0,0,objBetterBlockCtrl);

//initialize all variables
scrInitializeGlobals();

//load the current config file, sets default config if it doesn't exist
scrLoadConfig();

room_goto_next();

