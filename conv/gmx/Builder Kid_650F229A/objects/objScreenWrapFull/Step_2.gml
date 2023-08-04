with (objPlayer)
{
    //wraps the object around the screen if it goes outside the end of it
    if !place_meeting(x,y+2,objMovingPlatform) {
        if (x < __view_get( e__VW.XView, 0 ))
            x += __view_get( e__VW.WView, 0 );
        else if (x >= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
            x -= __view_get( e__VW.WView, 0 );
        
        if (y < __view_get( e__VW.YView, 0 ))
            y += __view_get( e__VW.HView, 0 );
        else if (y >= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
            y -= __view_get( e__VW.HView, 0 );
    }
}

with (objBullet)
{
    //wraps the object around the screen if it goes outside the end of it
    
    if (x < __view_get( e__VW.XView, 0 ))
        x += __view_get( e__VW.WView, 0 );
    else if (x >= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
        x -= __view_get( e__VW.WView, 0 );
    
    if (y < __view_get( e__VW.YView, 0 ))
        y += __view_get( e__VW.HView, 0 );
    else if (y >= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
        y -= __view_get( e__VW.HView, 0 );
}

with (objMovingPlatform)
{
    //wraps the object around the screen if it goes outside the end of it
    
    if (x < __view_get( e__VW.XView, 0 ))
        x += __view_get( e__VW.WView, 0 ) 
    else if (x >= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
        x -= __view_get( e__VW.WView, 0 ) 
    
    if (y < __view_get( e__VW.YView, 0 ))
        y += __view_get( e__VW.HView, 0 )
    else if (y >= __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
        y -= __view_get( e__VW.HView, 0 )
}


