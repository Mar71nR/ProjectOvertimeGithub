// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DarkFadeInOut(new_room, fadeInRate, fadeOutRate)
{
	var ins = instance_create_depth(0, 0, -999, objDarkFader)
	ins.roomToTransformInto = new_room
	ins.fadeInSpeed = fadeInRate
	ins.fadeOutSpeed = fadeOutRate
}