event_inherited();
/// Init variables

// Should be edited
name = "Basic Tower"                    // The name of the tower that will appear
top_sprite = sprAlexAimerTowerIdle      // The top part of the tower
top_x = x                               // The X coordinate for the top part
top_y = y                               // The Y coordinate for the top part
top_x_offset = 0                        // Offset for the top_x coord
top_y_offset = 0                        // Offset for the top_y coord
top_image_index = 0                     // Image index of the top part
top_image_spd = .3                      // Image speed for the top part
top_scale = 0                           // Used for the bounce effect when placing the tower
portrait = sprAlexAimerTowerPortrait    // The picture shown in the store
cost = 10                               // How much this tower is worth
grid_size = 2                           // How many grids it will take up (each is 16px)
fire_frequency = 40                     // How often it attacks
projectile = objAlexProjectile          // What projectile is spawns
height = 32                             // From what height to fire the projectile
fire_radius = 0                         // How far from the center should it fire
range = 0                               // The effective range of the tower

// Save related
//saved = false                           // Whether the tower has been saved into memory

// Other vars
t = 0                                   // General use timer
top_t = 0                               // Used for the scaling effect for the top part
active = false                          // Whether the tower is build
out_of_range = false                    // Used for the targetting towers to stop shooting
blocked = false                         // Checks if the tower can't be build because of an obstacle
tower_shake_amnt = 0                    // Used for shaking the tower
fake_x = x
fake_y = y                              // The coordinates used to move around the inactive version of the tower
stunned = false;
stun_time = 75;
star_t = 0;

