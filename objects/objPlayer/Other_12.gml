/// @description Insert description here
// You can write your code in this editor


var MyAttack = 0

//Checks what punch it is
if(IsHit == false && CurrentHP > 0)
{
	if (AttackType == "Basic Punch")
	{
		sprite_index = sprPlyrBasicPunch
		MyAttack = instance_create_layer(self.x,self.y, "Instances", ATKbasicPunch)
	} else if (AttackType == "Strong Punch")
	{
		sprite_index = sprPlyrHeavyPunch
		MyAttack = instance_create_layer(self.x,self.y, "Instances", ATKstrongPunch)
	} else if (AttackType == "Side Strong")
	{
		sprite_index = sprPlyrSideStrong
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKsideStrong)
	} else if (AttackType == "Side Light")
	{
		sprite_index = sprPlyrSideLight
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKsideLight)
	} else if (AttackType == "Down Strong")
	{
		sprite_index = sprPlyrDownStrong
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKdownStrong)
	} else if (AttackType == "Down Light")
	{
		sprite_index = sprPlyrDownLight
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKdownLight)
	}/*if (AttackType == "Up Strong")
	{
		sprite_index = sprPlyrUpStrong
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKupStrong)
	} else if (AttackType == "Up Light")
	{
		sprite_index = sprPlyrUpLight
		MyAttack = instance_create_layer(self.x, self.y, "Instances", ATKupLight)
	} else */
}

if (MyAttack != 0)
{
	SpeedMod = 0
	IsAttacking = true
	MyAttack.image_xscale = image_xscale
	MyAttack.image_speed = image_speed
	MyAttack.Owner = "Player"
}






