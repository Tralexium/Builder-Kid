/// @description  Handle 1st wave segment

var segment = wave_id[0];

// Spawn next enemy
if(segment.amount > 0) {
    instance_create(112, -32, segment.enemy) // create the enemy
    segment.amount--; // remove the enemy
    alarm[0] = segment.seperation; // prepare the next enemy
    
    if(segment.amount == 0)
        segment_finished[0] = true
}

