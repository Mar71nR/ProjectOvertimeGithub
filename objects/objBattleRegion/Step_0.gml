/// @description Insert description here
// You can write your code in this editor

var Enemyies = instance_nearest(x,y, objEnemy)

if(instance_exists(Enemyies) && point_in_rectangle(Enemyies.x, Enemyies.y,LeftEdge,TopEdge,RightEdge,BottomEdge) 
	|| instance_exists(objBossOrc) && point_in_rectangle(objBossOrc.x, objBossOrc.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	|| instance_exists(objBrute) && point_in_rectangle(objBrute.x, objBrute.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	|| instance_exists(objBruteBoss) && point_in_rectangle(objBruteBoss.x, objBruteBoss.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	|| instance_exists(objEnemyRedBoss) && point_in_rectangle(objEnemyRedBoss.x, objEnemyRedBoss.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	|| instance_exists(objEnemyRed) && point_in_rectangle(objEnemyRed.x, objEnemyRed.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	|| instance_exists(objEnemyOrange) && point_in_rectangle(objEnemyOrange.x, objEnemyOrange.y,LeftEdge,TopEdge,RightEdge,BottomEdge)
	)
{
    HasEnemies = true;
}else{
    HasEnemies = false;
    IsActive = false;
}
 
/*	if(instance_exists(objBossOrc) && point_in_rectangle(objBossOrc.x, objBossOrc.y,LeftEdge,TopEdge,RightEdge,BottomEdge))
	{
	    HasEnemies = true;
	}else{
	    HasEnemies = false;
	    IsActive = false;
	}
*/




