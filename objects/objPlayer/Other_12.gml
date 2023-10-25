/// @description Insert description here
// You can write your code in this editor

#macro LayerSize 35
var MyAttack = 0

if(IsHit == false && CurrentHP > 0)
{
	if (AttackType == "Basic Punch")
	{
		sprite_index = sprBasicPunchHBox
		MyAttack = instance_create_layer(self.x,self.y,"Instances",ATKbasicPunch)
	} else if (AttackType == "Strong Punch")
	{
		sprite_index = sprStrongPunchHBox
		MyAttack = instance_create_layer(self.x,self.y, "Instances", ATKstrongPunch)
	}
}

if (MyAttack != 0)
{
	SpeedMod = 0
	IsAttacking = true
	MyAttack.image_xscale = image_xscale
	MyAttack.image_speed = image_speed
	MyAttack.Owner = "Player"
}






