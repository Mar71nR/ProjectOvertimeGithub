/// @description Insert description here
// You can write your code in this editor

if(objPlayer.CurrentHP > 0)
{
	AttackChance = random(100)
	
	if((Aggressiveness > 0.75 && AttackChance >= 90) || (Aggressiveness > 1 && AttackChance >= 75))
	{
		sprite_index = sprEnemyStrongPunch
		MyAttack = instance_create_layer(x, y, "Instances", ATKstrongPunch)
	} else
	{
		sprite_index = sprEnemyBasicPunch
		MyAttack = instance_create_layer(x, y, "Instances", ATKbasicPunch)
	}
	
	speed = 0
	State = "Attacking"
	Aggressiveness = 0
	MyAttack.depth = depth
	MyAttack.image_xscale = image_xscale
	MyAttack.image_speed = image_speed
	MyAttack.Owner = "Enemy"
}






