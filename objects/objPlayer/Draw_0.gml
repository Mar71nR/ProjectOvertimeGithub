/// @description Insert description here
// You can write your code in this editor
//draw oval under sprite for shadow
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,y-8,x+40,y+8,false);
//Draw my own sprite. 
draw_set_alpha(1);
draw_self();







