/// @description Insert description here
// You can write your code in this editor
if room == rm_lobby{
	if !instance_exists(obj_boss){
		room_goto(rm_end)
		instance_destroy(obj_player)
	}
}