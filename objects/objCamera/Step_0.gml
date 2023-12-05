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
		var MinX = MyBr.LeftEdge + 683
		var MaxX = MyBr.RightEdge - 683
		var MinY = MyBr.TopEdge + 384
		var MaxY = MyBr.BottomEdge - 384
		
		TargetX = clamp(objPlayer.x, MinX, MaxX)
		TargetY = clamp(objPlayer.y, MinY, MaxY)
		
		if (MyBr.IsActive == false || distance_to_object(MyBr) > 0)
		{
			State = "Player"
		}
		break
}

//TargetX = objPlayer.x
//TargetY = objPlayer.y

if(distance_to_point(TargetX,TargetY) < MoveSpeed){
    x = TargetX;
    y = TargetY;
    speed = 0;
}else{
    move_towards_point(TargetX,TargetY,MoveSpeed);
}

//var shakeX = objPlayer.x + random_range(-screenshake, screenshake)
//var shakeY = objPlayer.y - 48 + random_range(-screenshake, screenshake)



