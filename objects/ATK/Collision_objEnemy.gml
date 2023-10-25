/// @description Insert description here
// You can write your code in this editor

if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Player")
{
	other.CurrentHP -= Damage
	other.IsHit = true
	other.alarm[0] = StunLength
	
	audio_play_sound(HitSound,10,false)
	Hit = true
}







