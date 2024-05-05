/// @description Insert description here
// You can write your code in this editor
if room == rm_lobby{
	if !instance_exists(obj_boss){
		room_goto(rm_end)
		instance_destroy(obj_player)
	}
}

if room == rm_start{
	if (point_in_rectangle(mouse_x, mouse_y, 
	start_button_x, start_button_y, start_button_x + b_w, start_button_y + b_h )) {
		b_hovered = true
		if (mouse_check_button_pressed(mb_left)) {
			room_goto(Room1)
		}
	}
	else{
		b_hovered = false
	}
	
}
