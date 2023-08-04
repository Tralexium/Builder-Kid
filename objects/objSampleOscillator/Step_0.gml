//scrOscillate(magnitude,period,offset)

switch(type) {

/*
Example 1: Floating around

We start from the initial y position of the object.
We want it to oscillate with a magnitude (or amplitude) of 32, so it will go 32 in the negative or the positive direction at its maximum extent.
The argument for period is simply how many frames it should take to complete one full oscillation, so one wave from 0 to postive, to 0, to negative and back to 0.
(Remember that 50 frames is one second in this engine)
*/

case 1:

y = ystart + scrOscillate(32,150,0);

break;


/*
Example 2: Image x and y scale are oscillating between 0.8 and 1.2.
The yscale has an offset of 25, so it will oscillate half a period out of phase from the xscale. This creates the effect you see in-game where it squishes back and forth.
*/

case 2:

image_xscale = 1 + scrOscillate(0.2,50,0);
image_yscale = 1 + scrOscillate(0.2,50,25);

break;

/*
Example 3: Spinning around
*/

case 3:

image_angle = scrOscillate(20,40,0);

break;

}


/* */
/*  */
