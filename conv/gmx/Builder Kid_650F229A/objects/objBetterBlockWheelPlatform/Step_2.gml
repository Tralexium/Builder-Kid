if (instance_exists(ctrl)){
    if (wasCarrying){
        with (ctrl){
            if ((abs(rotSpd) < rotCap || rotCap == 0) && dist != 0){
                rotSpd += sign(x - other.x)*global.grav*rotMult*(1 - abs(other.y+8 - y)/dist);
            }
        }
    }
}

