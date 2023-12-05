/// @description Insert description here
// You can write your code in this editor

if(OnGround == true)
{
	if(distance_to_object(objPlayer) <= AttackRange && abs(y - objPlayer.y) < LayerSize)
	{
		Aggressiveness += 0.02
		if(random(1) < Aggressiveness * 0.03)
		{
			event_user(2)
		}
	}
}












