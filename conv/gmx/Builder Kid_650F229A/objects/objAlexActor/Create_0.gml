/// @description  Actors are responsible for interacting with solids

// Custom speed variables
hspd = 0; // Horizontal speed
vspd = 0; // Vertical speed
grav = 0; // Gravity force

// Remainders is the amount left to travel
xRemainder = 0;
yRemainder = 0;

// Check for solid collisions
colCheck = true;

// Collision "actions"
actionId = 1; // Which action to take when collided with a solid
// 1: Push the actor back
// 2: Destroy the actor
// 3: Bounce the actor away
// 4: Stick it into the solid

