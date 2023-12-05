/// @description Insert description here
// You can write your code in this editor

event_inherited()

if (CurrentHP <= 0 /*&& OnGround == true*/) {
//	audio_play_sound(sfxDeath,10,false)
//	objPlayer.CurrentHP = objPlayer.CurrentHP + MaxHP
//	instance_create_layer(self.x, self.y, "Instances", vfxExplosion)
	FadeInOut(room_goto_next(), 0.7, 0.0075)
//	instance_destroy(self)
}




