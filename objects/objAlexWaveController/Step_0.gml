/// @description  Input

if(wave_cleared && !scrAlexCheckShopOpen() && !scrAlexCheckGameOver() && !scrAlexCheckRestartPrompt() && !ui_finish_transition_active) {
    // Hold to summon next wave
    if(scrButtonCheck(summon_button)) {
        summon_timer++;
        if(summon_timer >= summon_next_wave_hold_time) {
            summon_next_wave = true;
            summon_timer = 0;
            
            if(!all_waves_cleared) {
                show_debug_message(current_wave_num)
                var segment_count = array_length(global.list_of_waves[current_wave_num]);
                for(i=0; i<segment_count; i++) {
                    segment_finished[i] = false
                }
            }
        }
    } else if (summon_timer > 0) {
        summon_timer = lerp(summon_timer, 0, .1);
    }
    
    ui_button_progress = summon_timer/summon_next_wave_hold_time
    
    
    // Restart prompt
    if(scrButtonCheckPressed(global.restartButton)) {
        instance_create(0, 0, objAlexRestartPrompt);
    }
}


// Fast Forward during active waves
if(!wave_cleared) {
	if scrButtonCheckPressed(global.jumpButton) {
		fast_forward = true;
		audio_play_sound(sndAlexFastForwardStart, 0, false);
		audio_play_sound(sndAlexFastForwardTape, 0, true);
		layer_set_visible("Fast_Forward_Effect", true);
		game_set_speed(100, gamespeed_fps);
	}
	if scrButtonCheckReleased(global.jumpButton) {
		event_user(0);  // Stop Fast Forward
	}
}



/// Summon the next wave

// Check if wave is complete
var all_enemies_spawned = true;
for(i=0; i<3; i++){
    if (!segment_finished[i])
        all_enemies_spawned = false
}
if(!wave_cleared && !instance_exists(objAlexEnemy) && !instance_exists(objAlexHiddenEnemy) && all_enemies_spawned && !scrAlexCheckGameOver()) {
    wave_cleared = true
    event_user(0);  // Stop Fast Forward
	
    // SAVE CURRENT STATS
    with(objAlexWorldTracker) {
        event_user(2);
    }
}


if(summon_next_wave) {
    summon_next_wave = false
    
    // Reset timings on all towers
    with(objAlexTower) t = 1;

    // Get next available wave
    if(!all_waves_cleared) {
        // Keep the coin counter and hide it after some time
        with(objAlexTowerController) event_user(0);
    
        show_debug_message("spawn wave")
        audio_play_sound(sndAlexWaveStart, 0, false);
        wave_cleared = false
        wave_id = global.list_of_waves[current_wave_num]
        current_wave_num++;
        
        // Check if this is the last wave
        if(amount_of_waves == current_wave_num) {
            all_waves_cleared = true
            alarm[11] = 50
        }
        
        // Extract the segments
        for(i=0; i<array_length(wave_id); i++) {
            var segment = wave_id[i];
            alarm[i] = segment.spawn_delay;
        }
    } else {
        ui_finish_transition_active = true;
    
        // So that the fade covers the screen
        depth = -600
        
        // Create the finish beam effect
        with(objAlexPlayer) {
            visible = false;
            instance_create(x, y, objAlexFinishBeam)
        }
        
        // Fade music
        audio_sound_gain(global.currentMusic, 0, 5500)
        
        // Fade screen
        alarm[3] = 100;
    }
}

/// UI Manipulation

// Move the button
if((wave_cleared && !scrAlexCheckGameOver() && !ui_finish_transition_active) || fast_forward) {
    ui_right_margin = lerp(ui_right_margin, ui_active_button_position, .2)
    ui_button_alpha = lerp(ui_button_alpha, 1, .2);
} else {            
    ui_right_margin = lerp(ui_right_margin, ui_deactive_button_position, .2)
    ui_button_alpha = lerp(ui_button_alpha, 0, .2);
}

/// Fading if store is open

if(scrAlexCheckShopOpen()) {
    image_alpha = lerp(image_alpha, 0, .05)
} else {
    image_alpha = lerp(image_alpha, 1, .2)
}

/// Manually change wave [DEBUG]

if(global.debugMode && scrAlexCheckWaveClear()) {
    if(keyboard_check_pressed(vk_add))
        current_wave_num++;
    if(keyboard_check_pressed(vk_subtract))
        current_wave_num--;
}

/// Fade out and transition to the clear screen

if(finish_fade_out) {
    ui_finish_fade_alpha += .005;
    
    if(ui_finish_fade_alpha >= 1.2) {
        // Reset progress
        with(objAlexWorldTracker) {
            event_user(0)
            
            // Destroy the persistent World Tracker
            instance_destroy()
        }
        
        // Restore music volume
        audio_sound_gain(global.currentMusic, 1, 50)
    
        // ALEX CLEAR ROOM: NEXT NANC STAGE GOES HERE
        room_goto(rTestHub)
    }
}

