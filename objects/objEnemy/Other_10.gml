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
		if (instance_place(TargetX,TargetY,objEnemy) != noone && instance_place(TargetX, TargetY, objEnemy) != id)
		{
			if (State == "PositionFront")
			{
				State = "PositionBehind"
			}else
			{
				State = "PositionFront"
			}
		}
		if(ds_list_size(objPlayer.EnemyList) >= 3 && ds_list_find_index(objPlayer.EnemyList, id) == -1)
		{
			State = "Queueing"
			speed = 0
		}
		break
		
	case "Queueing":
		if (ds_list_size(objPlayer.EnemyList) < 3)
		{
			ds_list_add(objPlayer.EnemyList, id)
			if (x < objPlayer.x)
			{
				State = "PositionBehind"
			} else
			{
				State = "PositionFront"
			}
		}
		break
}




