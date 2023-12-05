/// @description Insert description here
// You can write your code in this editor

if (CurrentHP <= 0 /*&& OnGround == true*/) {
	audio_play_sound(sfxDeath,10,false)
	objPlayer.CurrentHP = objPlayer.CurrentHP + MaxHP
	instance_create_layer(self.x, self.y, "Instances", vfxExplosion)
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
		
		zVelocity = jumpPower
		
		break
		
	case "Queueing":
		event_user(3)
		break
}

if (InAir = true){
	speed = 0
	zVelocity = zVelocity + force_gravity
	var predictedZ = y + zVelocity

	if(!place_meeting(x, predictedZ, currentY))
	{
		y = y + zVelocity
	} else 
	{
		predictedZ = y
		while (!place_meeting(x, predictedZ, currentY))
		{
			predictedZ += sign(zVelocity)
		}
		y= predictedZ - sign(zVelocity)
		if(InAirUp && !InAirDown)
		{
			zVelocity = 0
			OnGround = false
			InAirDown = true
			InAirUp = true
			canJuggle = true
		}else 
		{
			zVelocity = 0
			currentY = 0
			OnGround = true
			InAir = false
			InAirDown = false
			InAirUp = false
			canJuggle = false
		}
	}
	if ((y + sprite_height / 2) >= currentY + sprite_height)//we hit the ground
	{
		y = currentY
		zVelocity = 0
		currentY = 0
		OnGround = true
		InAir = false
		InAirDown = false
		InAirUp = false
		canJuggle = false
	}
	if(zVelocity>0)
	{
		InAirDown = true              
	}
}
depth = -1*GroundY;


