/// @description Insert description here
// You can write your code in this editor

if (CurrentHP <= 0/* && OnGround == true*/) {
	audio_play_sound(sfxDeath,10,false)
	objPlayer.CurrentHP = objPlayer.CurrentHP + MaxHP
	instance_destroy(self)
}


//if(IsHit == true)
//{
//	sprite_index = sprEnmHit;
//} else 
//{
//	sprite_index = sprEnmIdle;
//}
if(OnGround == true){
	InAir = false
	InAirUp = false
	InAirDown = false
    GroundY = y
	event_user(0)
}

switch (State){
    case "Idle":
        event_user(3) 
        event_user(1) 
        break;
		
    case "PositionFront":
        SideMod = 1
        event_user(4)
        event_user(5)
        event_user(3) 
        event_user(1)
        break;
		
    case "PositionBehind":
        SideMod = -1
        event_user(4)
        event_user(5)
        event_user(3) 
        event_user(1)
        break;
		
	case "Hit":
		event_user(3)
		speed = 0
		break
		
	case "Queueing":
		break
}

depth = -1*GroundY;






