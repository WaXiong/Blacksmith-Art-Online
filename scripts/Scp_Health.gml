heart = argument0;
bar_length = argument1;
hp = argument2;
max_hp = argument3;
bar_x = argument4;
bar_y = argument5;
xoffset = argument6;
yoffset = argument7;

parts = sprite_get_number(heart) - 1
width = sprite_get_width(heart)
height = sprite_get_height(heart)
            
index = 0
bar = 0
//draw full hearts
    repeat(floor(hp / parts)){
        draw_sprite(heart,0,bar_x+width*xoffset*index,bar_y+height*yoffset*bar)
        index += 1
        if index = bar_length{
            bar +=1
            index = 0
        }
    }
//draw partial heart
    if hp mod parts >0{
        draw_sprite(heart,parts - hp mod parts,bar_x+width*xoffset*index,bar_y+height*yoffset*bar)
        index += 1
        if index = bar_length{
            bar +=1
            index = 0
        }
    }
//draw empty hearts
    repeat(floor(max_hp/parts - hp/parts)){
        draw_sprite(heart,parts,bar_x+width*xoffset*index,bar_y+height*yoffset*bar)
        index += 1
        if index = bar_length{
            bar +=1
            index = 0
        }
    }
