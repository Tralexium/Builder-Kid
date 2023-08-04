/// @description  Animations & input

t++;

// game over & black overlay
if(t <= go_anim_duration) {
    go_y = scrAlexEaseOutSine(t, go_y_start, go_y_start+go_y_travel, go_anim_duration);
    go_alpha = scrAlexEaseOutSine(t, 0, 1, go_anim_duration);
    overlay_alpha = scrAlexEaseOutSine(t, 0, .75, go_anim_duration);;
}

// text
var passed_t = go_anim_duration+anim_await_duration;
if(t > passed_t && t <= text_anim_duration+passed_t) {
    text_opt_xsep = scrAlexEaseOutSine(t-passed_t, text_opt_xsep_start, text_opt_xsep_start+text_opt_x_travel, text_anim_duration)
    text_y = scrAlexEaseOutSine(t-passed_t, text_y_start, text_y_start+text_opt_y_travel, text_anim_duration)
    text_alpha = scrAlexEaseOutSine(t-passed_t, 0, 1, go_anim_duration);
}

// Input
passed_t += text_anim_duration;
if(t > passed_t && !option_selected) {
    var input = scrButtonCheckPressed(global.rightButton) - scrButtonCheckPressed(global.leftButton);
    opt_index += input
    
    if(opt_index < 0)
        opt_index = 1;
    if(opt_index > 1)
        opt_index = 0;
    
    if(input != 0) {
        audio_stop_sound(sndAlexUIMove);
        audio_play_sound(sndAlexUIMove, 0, false);
    }
    
    if(scrButtonCheckPressed(global.jumpButton) || scrButtonCheckPressed(global.shootButton)) {
        option_selected = true;
        audio_play_sound(sndAlexUISelect, 0, false);
    }
}

// Fade out after selecting
if(option_selected) {

    fade_alpha += .03;
    
    if(fade_alpha > 2) {
        // Reload stage from last wave
        if(opt_index == 0) {
            room_restart();
        } 
        // Restart from the beginning
        else {
            // Reset all progress
            global.keep_data = false;
            
            room_restart();
        }
    }
}

