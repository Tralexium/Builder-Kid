if(sol=0 && instance_exists(objYoshiControl)) {
    sol=1
    a=instance_create(x,y-1,objBlock)
}

if(sol=1 && !instance_exists(objYoshiControl)) {
    sol=0
    with(a){instance_destroy()}
}

