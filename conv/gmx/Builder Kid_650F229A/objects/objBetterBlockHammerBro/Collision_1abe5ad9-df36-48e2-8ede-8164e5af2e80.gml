if (hp > 0){
    if (other.y > y - 28 || global.grav == -1)
        scrKillPlayer()
    else{
        hp = 0;
        other.vspeed = -6;
        other.djump = 1;
        event_user(0);
    }
}

