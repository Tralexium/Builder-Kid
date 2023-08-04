//Calculate track position (based off of x value unless moving only vertically)
if (horizontal || vertical){ //moving in some way
    if (horizontal){
        x = clamp(x, minX, maxX);
        if (minX == maxX) horizontal = false; //divide by 0
        else{
            trackPos = (x - minX) / (maxX - minX);
        }
    }
    if (vertical){
        y = clamp(y, min(leftY, rightY), max(leftY, rightY));
        if (!horizontal){ //only vertical
            if (leftY == rightY) vertical = false; //divide by 0
            else trackPos = (y - leftY) / (rightY - leftY); //works with the lerp function in the Step Event regardless of which value is larger
        }
    }
    if (horizontal && vertical){
        trackSize = point_distance(minX, leftY, maxX, rightY); //if leftY > rightY, this will still work
    }else if (horizontal){
        trackSize = maxX - minX;
    }else if (vertical){
        trackSize = abs(rightY - leftY);
    }
}

//Create platforms
for(i=platforms;i>0;i--){
    with instance_create(x,y,objBetterBlockWheelPlatform){
        x += lengthdir_x(other.dist,other.angle + other.i*(360/other.platforms)) - 16;
        y += lengthdir_y(other.dist,other.angle + other.i*(360/other.platforms)) - 8;
        other.platform[other.i] = id;
        ctrl = other.id
    }
}

