/// @description Insert description here
// You can write your code in this editor
if(CurrentHP > 0){
     //Checks for A or D button press 
	XSpeed = 0;
	if(keyboard_check(ord("A"))){
		XSpeed = -1*Speed;
	}else if(keyboard_check(ord("D"))){
		XSpeed = Speed;
	}
	//Check if W or S are pressed
	YSpeed = 0;
	if(OnGround == true){
		if(keyboard_check(ord("W"))){
			YSpeed = -1*Speed;
		} else if(keyboard_check(ord("S"))){
			YSpeed = Speed;
		}
	}
	if(IsAttacking == false && IsHit = false){
        
    //If the player is on the ground move them with XSpeed and YSpeed, otherwise ignore YSpeed 
		if(OnGround==true){    
		if(XSpeed != 0 && YSpeed != 0){
			x+=XSpeed*SpeedMod*.7;
			y+=YSpeed*SpeedMod*.7;
		}else if(XSpeed != 0 || YSpeed != 0){
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
	}
	//If the player is on the ground, this sets their GroundY variable to their current y position 
	if(OnGround == true){
		GroundY = y;
	}
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects. 
	depth = -1*GroundY;
}else{
    instance_destroy();
}







