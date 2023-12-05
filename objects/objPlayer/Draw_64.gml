/// @description Insert description here
// You can write your code in this editor

var MyBR = instance_nearest(x,y, objBattleRegion)

//-------------------------------------------DE-BUGGING CODE DISPLAY--------------------------------------------

//draw_set_font(Font1)
//draw_text(10, 500,"Speed: " + string(Speed) + " SpeedMod: " + string(SpeedMod) + " XSpeed: " + string(XSpeed) +
//			" YSpeed: " + string(YSpeed) + "\nAttackType: " + string(AttackType) + " IsAttacking: " +
//			string(IsAttacking) + "\nBR Active: " + string(MyBR.IsActive) + " HE: " + string(MyBR.HasEnemies))



if(CurrentHP > 0)
{
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(145,42,327,65,false)
	
	draw_set_color(c_maroon)
	draw_rectangle(147,44,327,65,false)
	
	draw_rectangle_color(147,44,20+327*(CurrentHP/MaxHP), 65, c_green, c_lime, c_lime, c_green, false)
	draw_sprite(uiHealthBar, 0, 20, 10)
}




