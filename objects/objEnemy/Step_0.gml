/// @description Insert description here
// You can write your code in this editor
if(OnGround == true){
    GroundY = y;
}
depth = -1*GroundY;

//if(IsHit == true)
//{
//	sprite_index = sprEnmHit;
//} else 
//{
//	sprite_index = sprEnmIdle;
//}

event_user(0)

switch (State){
    case "Idle":
        event_user(3) 
        event_user(1) 
        break;
		
    case "PositionFront":
        SideMod = 1
        //Find Target position 
        //Move there 
        event_user(3) 
        event_user(1)
        break;
		
    case "PositionBehind":
        SideMod = -1
        //Find Target position 
        //Move there 
        event_user(3) 
        event_user(1)
        break;
		
	case "Hit":
		event_user(3)
		break
}



