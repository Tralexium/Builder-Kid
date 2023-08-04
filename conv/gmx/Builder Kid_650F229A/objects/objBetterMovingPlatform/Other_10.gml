player = instance_place(x, y-2*global.grav, objPlayer);
if (wasCarrying && player == noone) player = instance_place(xprevious, yprevious-2*global.grav, objPlayer); //prev. frame

if (player == noone && global.grav == 1 && wasCarrying){
    player = instance_place(xprevious, yprevious-2*global.grav - max(bbox_top - bbox_tPrevious, 0), objPlayer);
}
if (player == noone && global.grav == -1 && wasCarrying){
    player = instance_place(xprevious, yprevious-2*global.grav - min(bbox_bottom - bbox_bPrevious, 0), objPlayer); //prev. frame position and scale
}

//Not on top of platform
if (player != noone && !((global.grav == 1 && player.yprevious + 9 - player.gravity <= bbox_tPrevious) || (global.grav == -1 && player.yprevious - 9 + other.gravity >= bbox_bPrevious)))
    player = noone;

//Move Player
if (player != noone && (!instance_exists(player.riding) || player.riding == id || scrIsBetterBlock(player.riding) || (sign(y - yprevious) == -global.grav && ((global.grav == 1 && bbox_top < player.riding.bbox_top) || (global.grav == -1  && bbox_bottom > player.riding.bbox_bottom))))){
    with (player){
        riding = other;
        djump = 1;
        onPlatform = true;
        
        //Vertical Movement
        if (global.grav == 1){
            if (vspeed > 0) vspeed = 0;
            platCheck = (other.bbox_top - 9) - y;
            for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                if (place_meeting(x, y+platCounter*sign(platCheck), objBlock)){ //touching objBlock or a child of objBlock
                    with (objBlock){
                        if (place_meeting(x, y-other.platCounter*sign(other.platCheck), other) && id != other.riding){ //avoid being pulled into a block or through a platform
                            if (other.platCheck > 0 && bbox_top >= other.y + 9 - other.gravity){
                                other.y = bbox_top - 9; //stand on the block
                                other.platCheck = 0; //end the for loop
                                other.onPlatform = (object_is_ancestor(object_index, objPlatform) || object_index == objPlatform);
                                other.riding = id;
                                break;
                            }else if (scrIsBlock() && other.platCheck < 0 && bbox_bottom <= other.y - 13){ //get pushed through platform
                                other.vspeed = 0;
                                other.platCheck = 0; //end the for loop
                                other.y = bbox_bottom + 13; //snap to the bottom of the block
                                break;
                            }
                        }
                    }
                }
            }
            y += platCheck;
        }else if (global.grav == -1){ //we add 9 pixels instead of 8 to make up for the 1 pixel offset bbox_bottom has
            if (vspeed < 0) vspeed = 0;
            platCheck = (other.bbox_bottom + 9) - y;
            for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                if (place_meeting(x, y+platCounter*sign(platCheck), objBlock)){ //touching objBlock or a child of objBlock
                    with (objBlock){
                        if (place_meeting(x, y-other.platCounter*sign(other.platCheck), other) && id != other.riding){ //avoid being pulled into a block or through a platform
                            if (other.platCheck < 0 && bbox_bottom <= other.y - 9 - other.gravity){
                                other.y = bbox_bottom + 9; //stand on the block
                                other.platCheck = 0 //end the for loop
                                other.onPlatform = (object_is_ancestor(object_index, objPlatform) || object_index == objPlatform);
                                other.riding = id;
                                break;
                            }else if (scrIsBlock() && other.platCheck > 0 && bbox_top >= other.y + 13 - other.gravity){ //get pushed through platform
                                other.vspeed = 0;
                                other.platCheck = 0; //end the for loop
                                other.y = bbox_top - 13; //snap to the top of block
                                break;
                            }
                        }
                    }
                }
            }
            y += platCheck;
        }
        //Horizontal Movement
        if (riding = other.id){ //will not be true if the player was placed on a block while calculating vertical movement in the above section;
            platCheck = other.x - other.xprevious;
            platCheck -= hPush;//prevents the player from hanging on the edge of a moving platfom when they should have fallen
            for(platCounter=1; platCounter<=ceil(abs(platCheck)); platCounter++){
                if (place_meeting(x+platCounter*sign(platCheck), y, objBlock)){
                    with (objBlock){
                        if (scrIsBlock() && place_meeting(x-other.platCounter*sign(other.platCheck), y, other)){
                            other.platCheck = (other.platCounter-1)*sign(other.platCheck);
                            other.platCounter = ceil(abs(other.platCheck));
                            break;
                        }
                    }
                }
            }
            x += platCheck;
        }
    }
}

wasCarrying = !(player == noone);

bbox_tPrevious = bbox_top;
bbox_bPrevious = bbox_bottom;

