/// @description  Take damage and store the projectile in a list

// Check if we already collided with this projectile
for(var i=0; i<array_length(projectile_list); i++) {
    if(projectile_list[i] == other.id)
        exit
}

other.pierce -= 1

hp -= other.dmg
flash_val = 1
array_push(projectile_list, other.id)

if(hp <= 0) instance_destroy();

