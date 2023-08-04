/// @description  Do fancy effects here

event_user(0)

/// Make sure to save the picked health AFTER clearing the wave

if(instance_number(object_index) == 1 && scrAlexCheckWaveClear()) {
    // SAVE CURRENT STATS
    with(objAlexWorldTracker) {
        event_user(2);
    }
    
    show_debug_message("saved health pickup after wave clear");
}

