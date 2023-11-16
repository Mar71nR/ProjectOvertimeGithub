/// @description Insert description here
// You can write your code in this editor
if (state == fadeIn){
	image_alpha += fadeInSpeed
	if (image_alpha >= 1) 
	{
		image_alpha = 1
		state = fadeOut
		room_goto(roomToTransformInto)
	}
}else if (state == fadeOut)
{
	image_alpha -= fadeOutSpeed

	if (image_alpha <= 0) 
	{
		image_alpha = 0
		state = fadeIn
		instance_destroy()
	}
}



