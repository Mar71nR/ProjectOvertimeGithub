/// @description Insert description here
// You can write your code in this editor

if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize &&
	abs(y - other.y) <= LayerSize && Owner == "Player")
{
//	if(other.InAir == true){
	other.CurrentHP -= Damage
	other.State = "Hit"
	other.jumpPower = -(juggleValue)
	if (other.InAir != true){
		other.currentY = other.y
	}
	other.InAir = true
	other.InAirUp = true
	other.InAirDown = false
	other.OnGround = false
	other.canJuggle = true
	other.alarm[0] = StunLength
	
	audio_play_sound(sfxEnemyHit,10,false)
	Hit = true
//	}
}







