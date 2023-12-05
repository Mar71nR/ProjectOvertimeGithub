/// @description Insert description here
// You can write your code in this editor

if (point_distance(x, y, TargetX, TargetY) >= Speed) 
{
	move_towards_point(TargetX, TargetY, Speed)
} else 
{
	speed = 0
}

if (point_distance(x, y, TargetX, TargetY) < 200 &&/* ds_list_size(objPlayer.EnemyList) < 3 &&*/
		ds_list_find_index(objPlayer.EnemyList, id) == -1)
	{
		ds_list_add(objPlayer.EnemyList, id)
	}













