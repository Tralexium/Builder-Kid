for(var i = 0; i < 3; i += 1)
{
    draw_set_halign(fa_left)
    draw_set_font(fDefault30);
    
    scrDrawTextOutline(x+i*xSeperation+2,y,str[i], c_white, c_black);
    
    draw_set_font(fDefault12);
    
    scrDrawTextOutline(x+i*xSeperation+10,y+70,"Deaths: "+string(death[i]), c_white, c_black);
    scrDrawTextOutline(x+i*xSeperation+10,y+90,"Time: "+timeStr[i], c_white, c_black);
    
    draw_set_halign(fa_center);
	draw_set_color(c_white)
	
    if (difSelect && i == select)
    {
        if (!warnText)
        {
            if(select2==-1) draw_text(x + i*xSeperation + 65, y+49,"< Load game >");
            else if(select2==0) draw_text(x + i*xSeperation + 65, y+49,"< Medium >");
            else if(select2==1) draw_text(x + i*xSeperation + 65, y+49,"< Hard >");
            else if(select2==2) draw_text(x + i*xSeperation + 65, y+49,"< Very Hard >");
            else if(select2==3) draw_text(x + i*xSeperation + 65, y+49,"< Impossible >");
        }
        else
        {
            draw_text(x+i*xSeperation+63,y-100,"Are you sure#you want to#overwrite this save?")
            if(warnSelect) draw_text(x + i*xSeperation + 65, y+49,"< Yes >");
            else draw_text(x + i*xSeperation + 65, y+49,"< No >");
        }
    }
    
    if (exists[i])
    {        
        if ((!difSelect) || (difSelect && i != select))
        {
            if(difficulty[i]==0){draw_text(x+i*xSeperation+65,y+49,"Medium")}
            else if(difficulty[i]==1){draw_text(x+i*xSeperation+65,y+49,"Hard")}
            else if(difficulty[i]==2){draw_text(x+i*xSeperation+65,y+49,"Very Hard")}
            else if(difficulty[i]==3){draw_text(x+i*xSeperation+65,y+49,"Impossible")}
        }
        
        draw_set_font(fDefault24);
        
        if(clear[i]){draw_text(x+i*xSeperation+63,y+215,"Clear!!")}
        
        if(boss[0,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+0,y+128)}
        if(boss[1,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+32,y+128)}
        if(boss[2,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+64,y+128)}
        if(boss[3,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+96,y+128)}
        if(boss[4,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+0,y+160)}
        if(boss[5,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+32,y+160)}
        if(boss[6,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+64,y+160)}
        if(boss[7,i]){draw_sprite(sprBossItem,-1,x+i*xSeperation+96,y+160)}
    }
    else
    {
        if ((!difSelect) || (difSelect && i != select))
        {
            draw_text(x+i*xSeperation+65,y+49,"No Data");
        }
    }
    
    if (i == select)
    {
        draw_sprite(sprGravityUp,playerIndex,x+i*xSeperation+65,y+310);
    }
}

scrDrawButtonInfo(true);

