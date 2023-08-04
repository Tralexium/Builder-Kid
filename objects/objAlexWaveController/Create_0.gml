/// @description  Init variables

global.list_of_waves = []						 // stores all the waves
current_wave_num = global.last_wave_number;      // current wave number
amount_of_waves = 0

wave_id = []                        // current wave structure
summon_next_wave = false            // when true it allows the next wave to be summoned
summon_next_wave_hold_time = 40     // How long to hold to summon next wave
summon_button = global.shootButton  // Which button to hold
summon_timer = 0                    // Keeps track of how long you're holding the button
wave_cleared = true                 // if no enemies are present on screen
all_waves_cleared = false           // Checks if all the enemy waves have been cleared
finish_fade_out = false             // Fade before going to the next screen

// Whether all the enemies from the # segment are finished spawning
for(i=0; i<3; i++)
    segment_finished[i] = true

// UI
button_sprite_index = sprAlexNextWaveButton
ui_top_margin = 8
ui_active_button_position = room_width - 56
ui_deactive_button_position = room_width
ui_right_margin = ui_active_button_position
ui_button_progress = 0
ui_button_alpha = 1;
ui_finish_transition_active = false;
ui_finish_fade_alpha = 0;

/// Populate enemy waves
// MAX OF 3 SEGMENTS SUPPORTED PER WAVE!

// Waves 1-9
scrAlexAddEnemyWave(objAlexEnemyHungryTag, 6, 35, 1)
scrAlexAddEnemyWave(objAlexEnemyHungryTag, 8, 25, 1)
scrAlexAddEnemyWave(objAlexEnemyRamboTag, 5, 35, 1)
scrAlexAddEnemyWave(objAlexEnemyHungryTag, 5, 25, 1, objAlexEnemyRamboTag, 3, 20, 180)
scrAlexAddEnemyWave(objAlexEnemySoldierTag, 5, 30, 1, objAlexEnemyHungryTag, 10, 30, 250)
scrAlexAddEnemyWave(objAlexEnemySoldierTag, 5, 30, 1, objAlexEnemyHungryTag, 6, 10, 180, objAlexEnemyRamboTag, 5, 30, 300)
scrAlexAddEnemyWave(objAlexEnemyNinjaFruit, 4, 30, 1, objAlexEnemyRamboTag, 10, 10, 180)
scrAlexAddEnemyWave(objAlexEnemyNinjaFruit, 10, 35, 1)
scrAlexAddEnemyWave(objAlexEnemyRamboTag, 10, 30, 1, objAlexEnemyBlueberapple, 2, 50, 400, objAlexEnemySoldierTag, 8, 20, 550)
// Wave 10 Boss
scrAlexAddEnemyWave(objAlexEnemyTrollface, 3, 100, 1)
// Waves 11-19
scrAlexAddEnemyWave(objAlexEnemyHealthyJar, 1, 1, 1, objAlexEnemyRamboTag, 10, 20, 150)
scrAlexAddEnemyWave(objAlexEnemyBlueberapple, 6, 30, 1, objAlexEnemyNinjaFruit, 8, 50, 50)
scrAlexAddEnemyWave(objAlexEnemyFruitWarrior, 3, 50, 1)
scrAlexAddEnemyWave(objAlexEnemySoldierTag, 15, 20, 1, objAlexEnemyBlueberapple, 5, 50, 100)
scrAlexAddEnemyWave(objAlexEnemyZappyTag, 8, 40, 1, objAlexEnemyHealthyJar, 1, 1, 300)
scrAlexAddEnemyWave(objAlexEnemyNinjaFruit, 12, 40, 1, objAlexEnemyFruitWarrior, 5, 30, 300, objAlexEnemyBlueberapple, 5, 100, 100)
scrAlexAddEnemyWave(objAlexEnemySleepyTag, 1, 1, 1, objAlexEnemyFruitWarrior, 7, 25, 150, objAlexEnemySleepyTag, 3, 50, 200)
scrAlexAddEnemyWave(objAlexEnemyZappyTag, 12, 30, 1, objAlexEnemySlimmy, 3, 120, 100)
scrAlexAddEnemyWave(objAlexEnemyFruitWarrior, 10, 40, 1, objAlexEnemySpitter, 4, 35, 30)
// Wave 20 Boss
scrAlexAddEnemyWave(objAlexEnemyTrollface, 10, 30, 1, objAlexEnemySlimmy, 8, 100, 100)
// Waves 21-24
scrAlexAddEnemyWave(objAlexEnemyHealthyJar, 1, 1, 1, objAlexEnemyFruitWarrior, 15, 20, 150, objAlexEnemyZappyTag, 15, 50, 200)
scrAlexAddEnemyWave(objAlexEnemySlimmy, 7, 100, 1, objAlexEnemySpitter, 10, 50, 1, objAlexEnemySleepyTag, 5, 30, 300)
scrAlexAddEnemyWave(objAlexEnemyFruitWarrior, 20, 30, 1, objAlexEnemySleepyTag, 10, 30, 30)
scrAlexAddEnemyWave(objAlexEnemySpitter, 15, 30, 1, objAlexEnemySlimmy, 10, 50, 100, objAlexEnemySleepyTag, 10, 50, 125)
// Final Boss
scrAlexAddEnemyWave(objAlexEnemyCursedTrollface, 1, 1, 1)

amount_of_waves = array_length(global.list_of_waves)
all_waves_cleared = (current_wave_num >= amount_of_waves)  // We redo this in case the player loads a completed save file that's already at the last possible wave
if(all_waves_cleared) alarm[11] = 1;  // Change the wave button sprite to the flag one

