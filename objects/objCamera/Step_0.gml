/// @description Insert description here
// You can write your code in this editor

var MyBr = instance_nearest(x, y, objBattleRegion)

switch State{
	case "Player":
		TargetX = objPlayer.x
		TargetY = objPlayer.y
		
		if (MyBr.IsActive == true)
		{
			State = "Region"
		}
		break
	
	case "Region":
		var MinX = objBattleRegion.LeftEdge + 512
		var MaxX = objBattleRegion.RightEdge -512
		var MinY = objBattleRegion.TopEdge + 384
		var MaxY = objBattleRegion.BottomEdge - 384
		
		TargetX = clamp(objPlayer.x, MinX, MinX)
		TargetY = clamp(objPlayer.y, MinY, MaxY)
		
		if (MyBr.IsActive == false || distance_to_object(objBattleRegion) > 0)
		{
			State = "Player"
		}
		break
}

TargetX = objPlayer.x
		TargetY = objPlayer.y

if(distance_to_point(TargetX,TargetY) < MoveSpeed){
    x = TargetX;
    y = TargetY;
    speed = 0;
}else{
    move_towards_point(TargetX,TargetY,MoveSpeed);
}






