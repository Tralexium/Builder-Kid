//animate player sprite
playerIndex = (playerIndex + 1/5) mod 4;

if (!settingKey)
{
    if (scrButtonCheckPressed(global.menuUpButton))
    {
        audio_play_sound(global.menuSound,0,false);
        select -= 1;
        if(select < 0)
            select = 10;
    }
    else if (scrButtonCheckPressed(global.menuDownButton))
    {
        audio_play_sound(global.menuSound,0,false);
        select += 1;
        if(select > 10)
            select = 0;
    }
    else if (scrButtonCheckPressed(global.menuBackButton))
    {
        scrSaveConfig();    //save changes
        instance_create(x,y,objOptionsMenu);
        instance_destroy();
    }
    else if (scrButtonCheckPressed(global.menuAcceptButton))
    {
        if (select != 10)
        {
            settingKey = true;
        }
        else
        {
            //default controls
            global.leftButton[0] = vk_left;
            global.rightButton[0] = vk_right;
            global.upButton[0] = vk_up;
            global.downButton[0] = vk_down;
            global.jumpButton[0] = vk_shift;
            global.shootButton[0] = ord("Z");
            global.restartButton[0] = ord("R");
            global.skipButton[0] = ord("S");
            global.suicideButton[0] = ord("Q");
            global.pauseButton[0] = ord("P");
            
            resetPrompt = true;
            alarm[0] = 60;
        }
    }
}
else
{
    if (keyboard_check_pressed(vk_anykey))  //check if a key is being pressed and if it is, store that key
    {
        var keyChange;
        
        keyChange = keyboard_key;
        
        if (keyChange == 160 || keyChange == 161)   //check if current key pressed is either shift key
            keyChange = 16; //set it to work for both shift keys
        
        if (select == 0) {global.leftButton[0] = keyChange;}
        else if (select == 1) {global.rightButton[0] = keyChange;}
        else if (select == 2) {global.upButton[0] = keyChange;}
        else if (select == 3) {global.downButton[0] = keyChange;}
        else if (select == 4) {global.jumpButton[0] = keyChange;}
        else if (select == 5) {global.shootButton[0] = keyChange;}
        else if (select == 6) {global.restartButton[0] = keyChange;}
        else if (select == 7) {global.skipButton[0] = keyChange;}
        else if (select == 8) {global.suicideButton[0] = keyChange;}
        else if (select == 9) {global.pauseButton[0] = keyChange;}
        
        settingKey = false;
    }
    else if (scrAnyControllerButton() != -1)    //check if a controller button was pressed, exit prompt
    {
        settingKey = false;
    }
}

//get current controls
strKey[0] = scrGetKeybind(global.leftButton[0]);
strKey[1] = scrGetKeybind(global.rightButton[0]);
strKey[2] = scrGetKeybind(global.upButton[0]);
strKey[3] = scrGetKeybind(global.downButton[0]);
strKey[4] = scrGetKeybind(global.jumpButton[0]);
strKey[5] = scrGetKeybind(global.shootButton[0]);
strKey[6] = scrGetKeybind(global.restartButton[0]);
strKey[7] = scrGetKeybind(global.skipButton[0]);
strKey[8] = scrGetKeybind(global.suicideButton[0]);
strKey[9] = scrGetKeybind(global.pauseButton[0]);
strKey[10] = "";

