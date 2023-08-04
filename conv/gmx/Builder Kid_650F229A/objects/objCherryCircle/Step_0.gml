// Calculate radius and angle based on timer and radius
// Then move each cherry to that location

for (var i=0; i<numCherries; i++) {
    var ct = t+i/numCherries // individual cherry's time
    var r = radius
    var a = ct*360
    
    // normal circle
    if motion == 1 {
        r = radius
        a = ct*360
    }
    // loop back to center
    else if motion == 2 {
        r = radius*sin(t*pi*4)
        a = ct*360
    }
    // complex circle
    else if motion == 3 {
        r = radius
        a = 360*sin(degtorad(a))
    }
    // swaying circle
    else if motion == 4 {
        r = radius
        a = ct*360 + 30*sin(degtorad(a*numCherries))
    }
    
    // Move cherries
    cherries[i].x = x+lengthdir_x(r, a)
    cherries[i].y = y+lengthdir_y(r, a)
}
t += dt

