/// @description  Load last save

if(global.keep_data) {
    event_user(1);
} else {
    event_user(0);
    global.keep_data = true;
}

/// Create the essential objects
// This prevents the "undifined global var" problem

instance_create(0, 0, objAlexWaveController);
instance_create(0, 0, objAlexTowerController);
instance_create(0, 0, objAlexControlDisplay);
instance_create(208, 176, objAlexPlayer);


