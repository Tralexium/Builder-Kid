collide = instance_place(x,y,objBlock)

if(collide != noone){
    a=instance_create(collide.x,collide.y,objPlaceholderBlock);
    a.sprite_index=collide.sprite_index
    a.visible=collide.visible;
    with(collide){instance_destroy()};
}

