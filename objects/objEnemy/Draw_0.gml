/// @description Insert description here
// You can write your code in this editor
var MyAction = floor(random(100))
//Set the opacity to 60% and then draw a dark gray oval for the shadow. 
draw_set_alpha(.6);
draw_set_color(c_dkgray);
if(InAir == true) {
	draw_ellipse(x-40,(currentY+8)+z,x+40,(currentY-8)+z,false);
} else
draw_ellipse(x-40,(y+8)+z,x+40,(y-8)+z,false);
//Draw my own sprite. 
draw_set_alpha(1)
draw_self()

//draw_text(x, y, State + "\nIA:" + string(InAir) + " Up:" + string(InAirUp) +
//		" Down:" + string(InAirDown)+ " OG: " + string(OnGround) + "\nX: " +
//		string(x) + " Y: " + string(y) + " Z: " + string(z) + "\nzVel: " +
//		string(zVelocity) + " CurrY: " + string(currentY) + " HP: " +
//		string(CurrentHP) + "\n MA: " + string(MyAction) + " Aggro: " +
//		string(Aggressiveness))





