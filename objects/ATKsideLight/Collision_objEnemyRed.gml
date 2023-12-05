/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize &&
	abs(y - other.y) <= LayerSize && Owner == "Player")
{
	audio_play_sound(sfxLightPunch,10,false)
}






