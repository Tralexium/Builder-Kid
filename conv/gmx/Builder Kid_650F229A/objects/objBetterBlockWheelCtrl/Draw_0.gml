//Draw path
if (move && (horizontal || vertical)){
    //get points to draw path
    if (horizontal){
        x1 = minX;
        x2 = maxX;
    }else{
        x1 = x;
        x2 = x;
    }
    if (vertical){
        y1 = leftY;
        y2 = rightY;
    }else{
        y1 = y;
        y2 = y;
    }
    //draw the path
    draw_set_color(c_ltgray);
    draw_line_width(x1, y1, x2, y2, 3);
    draw_set_color(c_white);
}
draw_self();
//Draw chains to platforms
for(i=0;i<platforms;i++){
    for(j=1;j<=chains;j++)
        draw_sprite(sprBetterBlockYIChain, 0, x+lengthdir_x(j*(dist/(chains)),angle + i*(360/platforms)), y+lengthdir_y(j*(dist/(chains)),angle + i*(360/platforms)));
}

