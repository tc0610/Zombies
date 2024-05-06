/// @description Insert description here
// You can write your code in this editor

var c_x = obj_camera.x + camera_get_view_width(view_camera[0])/2
var c_y = obj_camera.y + camera_get_view_height(view_camera[0])/2

if show_text{
		draw_sprite(spr_dialogue, 0, c_x - 15, c_y+95)
		draw_text(c_x-200,c_y+80,"Access denied. Seems like an")
		draw_text(c_x-200,c_y+95,"access card is needed.")	
}