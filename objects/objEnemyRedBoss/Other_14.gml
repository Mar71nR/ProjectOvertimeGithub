/// @description Insert description here
// You can write your code in this editor

if (point_distance(TargetX,TargetY,objPlayer.x, objPlayer.y) > AttackRange ||
		point_distance(TargetX,TargetY,objPlayer.x,objPlayer.y) < 50 ||
		abs(TargetY - objPlayer.y) > LayerSize ||
		sign(TargetX-objPlayer.x) != sign(SideMod))
{
	TargetX = random_range(objPlayer.x+60*SideMod, objPlayer.x+90*SideMod)
	TargetY = random_range(objPlayer.y-10, objPlayer.y+10)
}












