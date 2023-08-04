/// @description  scrAlexActorMoveX(amount, action, check4Blocks)
/// @param amount
/// @param  action
/// @param  check4Blocks
function scrAlexActorMoveX(argument0, argument1, argument2) {

	var amount = argument0;
	var action = argument1;
	var col = argument2;

	xRemainder += amount;
	var move = floor(xRemainder+0.5);

	if(!place_meeting(x+move, y, objAlexBlock) || place_meeting(x+move, y, objAlexPlatform) || !col)
	{
	  xRemainder -= move;
	  x += move;
  
	  return false;
	}

	if (move != 0)
	{
	  xRemainder -= move;
	  var sNum = sign(move);

	  while (move != 0)
	  {      
	    if (!place_meeting(x+sNum, y, objAlexBlock))
	    {
	      //No solid immediately beside us
	      x += sNum;
	      move -= sNum;
	    }
	    else
	    {
	      //Hit a solid!
	      switch(action)
	      {
	        default:
	        case 1: // Stop the object
	          hspd = 0;
	          break;
          
	        case 2: // Destroy the object
	          instance_destroy();
	          break;
            
	        case 3: // Bounce it off
	          hspd *= -1;
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



}
