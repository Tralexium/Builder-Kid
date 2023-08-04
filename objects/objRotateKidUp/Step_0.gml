if spin=true {
    v_target=360;
    if __view_get( e__VW.Angle, 0 )!=v_target {
        __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (5) )
    }else {
        scrFlipGrav()
        with(objSpinTransitionPlayer) {
            instance_create(x,y+4*global.grav,objPlayer); 
            instance_destroy()
        } 
        global.invertControls=false
        spin=false; 
        __view_set( e__VW.Angle, 0, 0 )
    }
}

