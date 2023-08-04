/// @description  Destroy the enemy and deal damage

if(exit_damage > 0) {
    with(objAlexPlayer) {
        hp -= other.exit_damage
    }
}

instance_destroy();

