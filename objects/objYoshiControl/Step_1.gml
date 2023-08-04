if instance_exists(objPlayer)
{
    objPlayer.maxSpeed=4
    objPlayer.jump = 11*global.grav
    objPlayer.djump = 0
    objPlayer.maxVspeed=11
    
    if global.dotkid = 1 || global.playerV = 1 {
        instance_destroy()
        objPlayer.maxSpeed=3
        objPlayer.jump = 8.5*global.grav
        objPlayer.maxVspeed=9
    }
}



