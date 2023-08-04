/// @description  Do fancy effects here

instance_create(x, y-(sprite_height/2), objAlexCoinGone);

/// Make sure to save all the coins picked up AFTER clearing the wave

if(instance_number(object_index) == 1 && scrAlexCheckWaveClear()) {
    // SAVE CURRENT STATS
    with(objAlexWorldTracker) {
        event_user(2);
    }
    
    show_debug_message("saved coins after wave clear");
}

