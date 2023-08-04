if place_meeting(x,y+vspeed,objBlock)
{
move_contact_solid(270,abs(vspeed))
vspeed=-1.5
}

if instance_exists(objPlayer)
{
if objPlayer.x>x{image_xscale=1}
if objPlayer.x<x{image_xscale=-1}
}

