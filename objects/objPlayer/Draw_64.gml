/// @description Insert description here
// You can write your code in this editor

var MyBR = instance_nearest(x,y, objBattleRegion)

draw_set_font(Font1)
draw_text(10, 10,"Speed: " + string(Speed) + " SpeedMod: " + string(SpeedMod) + " XSpeed: " + string(XSpeed) +
			" YSpeed: " + string(YSpeed) + "\nAttackType: " + string(AttackType) + " IsAttacking: " +
			string(IsAttacking) + "\nBR Active: " + string(MyBR.IsActive))

draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(18,100,264,124,false)

draw_set_color(c_maroon)
draw_rectangle(20,102,262,126,false)

if(CurrentHP > 0)
{
	draw_rectangle_color(20,102,20+242*(CurrentHP/MaxHP), 126, c_green, c_lime, c_lime, c_green, false)
}




