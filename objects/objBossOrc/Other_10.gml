/// @description Insert description here
// You can write your code in this editor

var MyAction = floor(random(100))

switch (State){
	case "Idle":
		if (distance_to_object(objPlayer) < SightRange)
		{
			if (MyAction <= 50)
			{
				State = "PositionBehind"
			} else
			{
				State = "PositionFront"
			}
		}
		break
		
	case "PositionFront":
	case "PositionBehind":
		if (instance_place(TargetX,TargetY,objBossOrc) != noone && instance_place(TargetX, TargetY, objBossOrc) != id)
		{
			if (State == "PositionFront")
			{
				State = "PositionBehind"
			}else
			{
				State = "PositionFront"
			}
		}
		break
		
	case "Queueing":
		break
}






