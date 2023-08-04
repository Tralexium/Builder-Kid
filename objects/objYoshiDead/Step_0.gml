if !place_free(x,y+vspeed){
    move_contact_solid(270,abs(vspeed))
    gravity=0
    vspeed=0
} else {
    gravity=.4
}

if angle >-20{angle -= 0.5}

