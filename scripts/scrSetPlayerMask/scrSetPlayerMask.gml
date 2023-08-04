/// @description sets the player's mask depending on gravity flip mode and (ADDED) dotkid
/// @param ADDED
function scrSetPlayerMask() {

	if global.dotkid {
	    mask_index = sprPlayerMaskDot;
	} else {
	    if (global.grav == 1) {
	        //if mask_index == sprPlayerMaskDot y -= 8
	        mask_index = sprPlayerMask;
	    } else {
	        //if mask_index == sprPlayerMaskDot y += 7
	        mask_index = sprPlayerMaskFlip;
	    }
	}



}
