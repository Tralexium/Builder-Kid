// Template for creating an hp bar
// Maxscale is adjustable to a custom width
/* Set in boss creation code

a = instance_create(16, 16, objHPbar);
a.bossHP = bossHP;
a.maxscale = 768;
a.maxHP = bossHP;

*/

// Set in boss Destroy event
// with a{instance_destroy();}

// Set in boss code when boss takes damage
// a.bossHP--;

maxscale = 0;
bossHP = 0;
maxHP = bossHP;

image_xscale = maxscale;

//Spawn the other parts of the hp bar
alarm[0] = 1;

/* */
/*  */
