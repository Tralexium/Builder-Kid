//initiailze menu variables

difSelect = false;
select = global.menuSelectPrev[0];
select2 = 0;
xSeperation = 239;
str[0] = "Save 1";
str[1] = "Save 2";
str[2] = "Save 3";
warnText = false;
warnSelect = true;

appleIndex = 0;
playerIndex = 0;

//load save file values

for (var i = 0; i < 3; i++)
{
    if (file_exists("Data\\save"+string(i+1)))  //check if current save exists
    {
        //load save data
        exists[i] = true;
        
        //load the save map
    	var saveValid = true;   //keeps track of whether or not the save being loaded is valid
	    var saveMap = json_parse(LoadString("Data\\save"+string(global.savenum)));
        
        if (saveMap != -1)  //check if the save map loaded correctly
        {
            death[i] = saveMap.death;
            if (is_undefined(death[i])) //check for undefined value in case the save was messed with or got corrupted
                death[i] = 0;
            
            time[i] = saveMap.gameTime;
            if (is_undefined(time[i]))
                time[i] = 0;
    
            difficulty[i] = saveMap.difficulty;
            if (is_undefined(difficulty[i]))
                difficulty[i] = 0;
            
            for (var j = 0; j < 8; j++)
            {
                boss[j,i] = saveMap.saveBossItem[j];
                if (is_undefined(boss[j,i]))
                    boss[j,i] = false;
            }
            
            clear[i] = saveMap.saveGameClear;
            if (is_undefined(clear[i]))
                clear[i] = false;
            
            ds_map_destroy(saveMap);
        }
        else
        {
            //save map didn't load correctly, set the variables to the defaults
            death[i] = 0;
            time[i] = 0;
            difficulty[i] = 0;
            for (var j = 0; j < 8; j++)
            {
                boss[j,i] = false;
            }
            clear[i] = false;
        }
    }
    else
    {
        exists[i] = false;
        death[i] = 0;
        time[i] = 0;
    }
    
    var t = time[i];
    
    timeStr[i] = string(t div 3600) + ":";
    t = t mod 3600;
    timeStr[i] += string(t div 600);
    t = t mod 600;
    timeStr[i] += string(t div 60) + ":";
    t = t mod 60;
    timeStr[i] += string(t div 10);
    t = t mod 10;
    timeStr[i] += string(floor(t));
}

