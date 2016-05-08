//argument0 - string
//argument1 - height of the textbox in pixels
//argument2 - max lines before a new message.
//argument3 - color of the window

global.freeze = true;

object = instance_create(0,0, obj_Window_Message)

message = argument0+" ";
height = argument1;
maxWidth = object.sprite_width-28;
maxLines = argument2;
windowColor = argument3

if(windowColor == -1)
{
    windowColor = c_blue
}

//message = SplitText(message, maxWidth, '#', false);
show_debug_message(message)

//object.messages = GetLinesInString(message,'#',maxLines);
show_debug_message(object.messages)

object.winHeight = height;
object.x = view_xview[0]+16;
object.y = view_yview[0]+view_hview[0]-height;
object.image_xscale = 4.57;
object.image_yscale = (height-16)/64;
object.windowColor = windowColor;

with(object)
{
    show_debug_message("Created Message Window")
    event_user(0);
}
