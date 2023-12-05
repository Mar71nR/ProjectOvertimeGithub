/// @description Insert description here
// You can write your code in this editor

if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize &&
	abs(y - other.y) <= LayerSize && Owner == "Player")
{
	other.CurrentHP -= Damage
	other.State = "Hit"
	other.alarm[0] = StunLength
	
	audio_play_sound(sfxEnemyHit,10,false)
	instance_create_layer(other.x, other.y-32, "VFX", vfxPunchFX)
	Hit = true
}






