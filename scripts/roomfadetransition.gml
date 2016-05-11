#define roomfadetransition
//roomfadetransition(room)

targetRoom = argument0;
fadetransition();

#define fadetransition
//fadetransition(room)

//I assume the collision object has a 'targetRoom' property

if !instance_exists(Ob_Room_Trans)
{
    var tempRoomFade;
    tempRoomFade = instance_create(x, y, Ob_Room_Trans);
    tempRoomFade.tempTarget = other.targetRoom;
}