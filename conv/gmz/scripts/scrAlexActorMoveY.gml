/// scrAlexActorMoveY(amount, action, check4Blocks)

var amount = argument0;
var action = argument1;
var col = argument2;

yRemainder += amount;
var move = floor(yRemainder+0.5);

if(!place_meeting(x, y+move, objAlexBlock) || !col)
{
  yRemainder -= move;
  y += move;
  
  return false;
}


if (move != 0)
{
  yRemainder -= move;
  var sNum = sign(move);

  while (move != 0)
  {  
    // Check for other platforms
    var disabled = ds_list_create();
    var platform = false;
    
    while true {
      // Find the next non-disabled platform that we're touching
      var plat = instance_place(x, y+sNum, objAlexPlatform);
      
      // If not touching any platforms, quit
      if (!plat) break;
      
      // Check if we're on that platform
      if (sNum > 0 && y <= plat.y)
      {
        platform = true;
        break;
      }
      
      // Disable the platform
      ds_list_add(disabled, plat)
      plat.mask_index = sprAlexNoMask;
    }
    var shouldMove = (!place_meeting(x, y+sNum, objAlexBlock) && !platform);
    
    // Re-enable the platform
    for (var i = 0; i < ds_list_size(disabled); i++) {
        disabled[|i].mask_index = sprAlexPlatform;
    }
    ds_list_destroy(disabled);
    
    if (shouldMove)
    {
      //No solid immediately beside us
      y += sNum;
      move -= sNum;
    }
    else
    {
      //Hit a solid!
      switch(action)
      {
        default:
        case 1: // Stop the object
          vspd = 0;
          break;
          
        case 2: // Destroy the object
          instance_destroy();
          break;
            
        case 3: // Bounce it off
          vspd *= -1;
          break;
                    
        case 4: // Stick it
          hspd = 0;
          vspd = 0;
          break;
      }
      break;
    }
  }
}
