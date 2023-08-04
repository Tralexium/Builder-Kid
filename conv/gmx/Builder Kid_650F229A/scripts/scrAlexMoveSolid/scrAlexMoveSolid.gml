/// @description  scrAlexMoveSolid(x, y)
/// @param x
/// @param  y

var xx = argument0;
var yy = argument1;

xRemainder += xx;
yRemainder += yy;
moveX = round(xRemainder);
moveY = round(yRemainder);

if (moveX != 0 || moveY != 0)
{
  if (moveX != 0)
  {
    xRemainder -= moveX;
    x += moveX;

    if (moveX > 0)
    {
      if(place_meeting(x,y,objAlexActor))
      {
        //Push right
        with(instance_place(x,y, objAlexActor))
        {
          scrAlexActorMoveX(other.bbox_right+1 - bbox_left, 1, true);
        }
      }
      else
      {
        //Carry right
        with(instance_place(x,y-1, objAlexActor))
        {
          scrAlexActorMoveX(other.moveX, 1, true); // Carying can transport the player through solids, change it to 1 to avoid this behavior
        }
      }
    }
    else
    {
      if(place_meeting(x,y,objAlexActor))
      {
        //Push left
        with(instance_place(x,y, objAlexActor))
        {
          scrAlexActorMoveX(other.bbox_left - bbox_right-1, 1, true);
        }
      }
      else
      {
        //Carry left
        with(instance_place(x,y-1, objAlexActor))
        {
          scrAlexActorMoveX(other.moveX, 1, true);
        }
      }
    }
  }
  
  if (moveY != 0)
  {  
    yRemainder -= moveY;
    y += moveY;
    
    if (moveY > 0)
    {
      if(place_meeting(x,y,objAlexActor))
      {
        //Push down
        with(instance_place(x,y, objAlexActor))
        {
          scrAlexActorMoveY(other.bbox_bottom - bbox_top+1, 1, true);
        }
      }
      else
      {
        //Carry down
        with(instance_place(x,y-(1+moveY), objAlexActor))
        {
          scrAlexActorMoveY(other.moveY, 1, true);
        }
      }
    }
    else
    {
      if(place_meeting(x,y,objAlexActor))
      {
        //Push up
        with(instance_place(x,y, objAlexActor))
        {
          scrAlexActorMoveY(other.bbox_top-1 - bbox_bottom, 1, true);
        }
      }
    }
  }
}

with(instance_place(x,y, objAlexActor))
{
  // If inside a block, destroy
  if(place_meeting(x,y,objAlexBlock) && !colCheck)
  {
    instance_destroy();
  }
}
