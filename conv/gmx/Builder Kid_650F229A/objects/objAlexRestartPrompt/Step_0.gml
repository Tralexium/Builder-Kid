/// @description  Animations & input

t++;

// text
if(t <= text_anim_duration) {
    text_opt_xsep = scrAlexEaseOutSine(t, text_opt_xsep_start, text_opt_xsep_start+text_opt_x_travel, text_anim_duration)
    text_y = scrAlexEaseOutSine(t, text_y_start, text_y_start+text_opt_y_travel, text_anim_duration)
    text_alpha = scrAlexEaseOutSine(t, 0, 1, text_anim_duration);
    overlay_alpha = scrAlexEaseOutSine(t, 0, .75, text_anim_duration);
}

// Input
var passed_t = text_anim_duration;
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
    
    if(scrButtonCheckPressed(global.jumpButton)) {
        option_selected = true;
        audio_play_sound(sndAlexUISelect, 0, false);
    }
    
    if(scrButtonCheckPressed(global.shootButton)) {
        option_selected = true;
        opt_index = 0;
        audio_play_sound(sndAlexUICancel, 0, false);
    }
}

// Fade out after selecting
if(option_selected) {

    // Reset all progress
    if(opt_index == 1) {
        fade_alpha += .03;
    
        if(fade_alpha > 2) {
                    global.keep_data = false;
                    
                    room_restart();
        }
    // Cancel
    } else {
        overlay_alpha -= .1
        text_alpha -= .2;
        if(overlay_alpha <= 0)
            instance_destroy();
    }
}

