//dialogue(text)

show_debug_message("dialogue: " + argument0);

var winHeight = window_get_height();
var winWidth = window_get_width();

var dialog;

if (instance_find(Ob_DialogueBox, 0) == noone) {
    dialog = instance_create(
        0, 
        100,
        Ob_DialogueBox);
} else {
    dialog = instance_find(Ob_DialogueBox, 0);
    instance_place(
        0, 
        100,
        dialog);
}

dialog.text = argument0;
