/// @description Insert description here
// You can write your code in this editor
#macro LayerSize 35
var MyBR = instance_nearest(x,y, objBattleRegion)

//var up = keyboard_check(vk_up)
//var down = keyboard_check(vk_down)
//var right = keyboard_check(vk_right)
//var left = keyboard_check(vk_left)

//xVelocity = (right - left) * Speed
//yVelocity = (down - up) * Speed

//var predictedX = x + XSpeed
//var predictedY = y + YSpeed

if(CurrentHP > 0)
{
     //Checks for A or D button press 
	XSpeed = 0;
	if(keyboard_check(ord("A")))
	{
		XSpeed = -1*Speed;
	}else if(keyboard_check(ord("D")))
	{
		XSpeed = Speed;
	}
	//Check if W or S are pressed
	YSpeed = 0;
	if(OnGround == true)
	{
		if(keyboard_check(ord("W")))
		{
			YSpeed = (-1*Speed)*0.5;
		} else if(keyboard_check(ord("S")))
		{
			YSpeed = Speed*0.5;
		}
	}
	
	var predictedX = x + XSpeed
	var predictedY = y + YSpeed

	if(!place_meeting(predictedX, y, collisionBox)) {
	} else {
		predictedX = x
		while(!place_meeting(predictedX, y, collisionBox)){
			predictedX += sign(XSpeed)
		}
		XSpeed = 0
		//x = predictedX - sign(XSpeed)
	}
	if(!place_meeting(x, predictedY, collisionBox)) {
	} else {
		predictedY = y
		while(!place_meeting(x, predictedY,collisionBox)){
			predictedY += sign(YSpeed)
		}
		YSpeed = 0
		//y = predictedY - sign(YSpeed)
	}
	
	//if they are in the Battle Region, they can't move out
		if(MyBR.IsActive == true)
		{
			if (point_in_rectangle(x + XSpeed * SpeedMod, y, MyBR.LeftEdge,
				MyBR.TopEdge, MyBR.RightEdge, MyBR.BottomEdge) == false ||
				place_free(x + XSpeed * SpeedMod, y) == false)
			{
				XSpeed = 0	
			}
			
			if (point_in_rectangle(x, y + YSpeed * SpeedMod, MyBR.LeftEdge +
				35, MyBR.TopEdge, MyBR.RightEdge - 35, MyBR.BottomEdge) == false ||
				place_free(x, y + YSpeed * SpeedMod) == false)
			{
				YSpeed = 0	
			}
		}
//	var predictedX = x + XSpeed
//	var predictedY = y + YSpeed
//	
//	if(!place_meeting(predictedX, y, CollisionBox)){
//	} else {
//		predictedX = x
//		while(!place_meeting(predictedX, y, CollisionBox))
//		{
//			predictedX += sign(XSpeed)
//		}
//		x = predictedX - sign(XSpeed)
//	}
	
	if(IsAttacking == false && IsHit = false)
	{
        
		
    //If the player is on the ground move them with XSpeed and YSpeed, otherwise ignore YSpeed 
		if(OnGround==true)
		{    
			if(XSpeed != 0 && YSpeed != 0)
			{
			x+=XSpeed*SpeedMod*.7;
			y+=YSpeed*SpeedMod*.7;
			}else if(XSpeed != 0 || YSpeed != 0)
			{
			x+=XSpeed*SpeedMod;
			y+=YSpeed*SpeedMod;
			}
			
			
			
		}else if(OnGround == false ){
			x+=XSpeed*SpeedMod;
		}
    //Change the direction the sprite
		if(XSpeed != 0){
			image_xscale = sign(XSpeed*SpeedMod);
		}
    //Animate the Player based on what they're doing. 
		if(XSpeed == 0 && YSpeed == 0 && OnGround == true){
			SpeedMod = 1;
			sprite_index = sprPlyrIdle;
		}else if((XSpeed!=0 || YSpeed != 0) && sprite_index!=sprPlyrWalking && OnGround == true){
			sprite_index = sprPlyrWalking;
		}
	}else if(IsHit == true)
	{
	sprite_index = sprPlyrHit
	}	
}else
{
    MyCamera.State = "Dead"
	sprite_index = sprPlayerDead
	if (alarm[1] == -1)
	{
		alarm[1] = 90
	}
}
//If the player is on the ground, their GroundY is equal to the current y position.
if(OnGround == true)
{
	GroundY = y;	
}

if(CurrentHP >= MaxHP){
	CurrentHP = MaxHP
}

//Sets the Players' depth. We're using GroundY in order for the player to move behind and in front of things.
depth = -1*GroundY;




