//dialogue(text)

var winHeight = window_get_height();
var winWidth = window_get_width();

draw_rectangle_colour(
    0, 
    winHeight - 100, 
    winWidth, 
    winHeight, 
    c_blue, c_blue, c_blue, c_blue, 
    c_green);
    
draw_text(
    5,
    winHeight - 95,
    text);   
    
draw_flush();

