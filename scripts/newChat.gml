//newChat(messageArray, portrait);
var sent = argument0;
var portrait = argument1;

var text = instance_create(0,0,obj_dialogue);

text.portrait = portrait;
for(i=0; i< array_length_1d(sent);i++)
{
    text.message[i] = sent[i];
}
