global.freeze = true;

object = instance_create(0,0, obj_Window_Message);

message = argument0+" ";
maxWidth = object.sprite_width-28;
maxLines = 6;

//message = SplitText(message, maxWidth, 1, false);
//object.messages = GetLinesInString(message,'#',maxLines);

with(object)
{
    show_debug_message("Created Message Window")
    event_user(0);
}


