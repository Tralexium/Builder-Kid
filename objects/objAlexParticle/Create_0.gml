/// @description  Init vars

life = 50;              // How long should the particle be alive
max_life = life         // Starting life amount
start_col = c_white;    // Starting color
end_col = c_white;      // Ending color
spd_shift = 0;          // How much speed to apply each frame
shrink = true;          // Whether it should shrink based on the life
fade = false;           // Whether it should fade out based on the life
blend_mode = bm_normal; // Blending mode
random_wiggle = 0       // Randomly shifts around the next position
depth_check = true      // Assigns the depth based on its position

// Set these manually
add_angle = 0

// Misc.
t = 0;

