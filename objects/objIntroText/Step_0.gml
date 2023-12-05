/// @description Insert description here
// You can write your code in this editor

if (!global.sound_played) { //if the sound has not been played yet
  audio_play_sound(sfxTitleTheme, 10, false); //play snd_room with priority 10 and no loop
  global.sound_played = true; //set the global variable to true
}






