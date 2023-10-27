/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objEnemy) && point_in_rectangle(objEnemy.x, objEnemy.y,LeftEdge,TopEdge,RightEdge,BottomEdge))
{
    HasEnemies = true;
}else{
    HasEnemies = false;
    IsActive = false;
}






