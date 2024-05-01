/// @description Insert description here
// You can write your code in this editor
var _camW = camera_get_view_width(view_camera[0])
var _camH = camera_get_view_height(view_camera[0])


if instance_exists(obj_player){
	x = obj_player.x - _camW/2
	y = obj_player.centerY - _camH/2
}

x = clamp(x,0,room_width-_camW)
y = clamp(y,0,room_height - _camH)

camera_set_view_pos(view_camera[0],x,y);