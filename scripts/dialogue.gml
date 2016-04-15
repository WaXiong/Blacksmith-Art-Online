//dialogue(text)

show_debug_message("dialogue: " + text);

var winHeight = window_get_height();
var winWidth = window_get_width();

var dialog;

if (instance_find(Ob_DialogueBox, 1) == noone) {
    dialog = instance_create(
        0, 
        winHeight - 100,
        Ob_DialogueBox);
} else {
    dialogueBox = instance_find(Ob_DialogueBox, 1);
    instance_place(
        0, 
        winHeight - 100,
        dialogueBox);
}

dialog.text = text;
