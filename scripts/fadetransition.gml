//fadetransition(room)

targetRoom = argument0;
if !instance_exists(Ob_Room_Trans)
{
    var tempRoomFade;
    tempRoomFade = instance_create(x, y, Ob_Room_Trans);
    tempRoomFade.tempTarget = other.targetRoom;
}
