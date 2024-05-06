/// @description Insert description here
// You can write your code in this editor
if room != rm_lobby and room != rm_end{
	if !audio_is_playing(snd_ambience){
		audio_play_sound(snd_ambience,1,true)
	}
}
