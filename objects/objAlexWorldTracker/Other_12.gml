/// @description  Save current stats

// Make sure we don't save in a game over state
if(!scrAlexCheckGameOver()) {
    global.remaining_health = objAlexPlayer.hp;
    global.remaining_cash = objAlexTowerController.coins;
    global.last_wave_number = objAlexWaveController.current_wave_num;
    
    // Save all new towers
    array_resize(global.list_of_towers, 0); // Clear array in case some towers got sold
    with(objAlexTower) {
        event_user(14)
    }
    
    scrSaveGame(false);
}

