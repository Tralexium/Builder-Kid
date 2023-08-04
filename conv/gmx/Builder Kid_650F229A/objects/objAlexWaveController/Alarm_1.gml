/// @description  Handle 2nd wave segment

var segment = wave_id[| 1];

// Spawn next enemy
if(segment[? "amount"] > 0) {
    instance_create(112, -32, segment[? "enemy"]) // create the enemy
    segment[? "amount"]--; // remove the enemy
    alarm[1] = segment[? "seperation"]; // prepare the next enemy
    
    if(segment[? "amount"] == 0)
        segment_finished[1] = true
}

