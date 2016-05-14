///scr_text("Text",speed,x,y,w,h);

txt = instance_create(argument2, argument3, obj_text);
with(txt)
{
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd=argument1;
    font = regularTextFont;
    w=argument4;
    h=argument5;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    draw_set_font(regularTextFont);
    
    text_width = string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
    if(w==0) boxwidth = window_get_width() -(padding *3);
    else boxwidth= w - (padding*3);
    if(h==0) boxheight = text_height + (padding *2);
    else boxheight = h - (padding*3);

}
