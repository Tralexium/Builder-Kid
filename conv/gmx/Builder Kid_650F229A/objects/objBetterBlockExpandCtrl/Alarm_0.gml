blocks = floor(blocks);
if (blocks < 1){
    instance_destroy();
    exit;
}
var temp = (blocks - 1) / 2;
for(i=-temp;i<=temp;i++) with instance_create(x, y, objBetterBlockExpandBlock){
    range = other.i*32;
    horizontal = other.horizontal;
    moveTime = other.moveTime;
}
instance_destroy();

