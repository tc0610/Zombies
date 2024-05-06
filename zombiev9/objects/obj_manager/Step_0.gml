/// @description Insert description here
// You can write your code in this editor
if room == rm_lobby{
	if !instance_exists(obj_boss){
		room_goto(rm_end)
		instance_destroy(obj_player)
	}
}

if room == rm_start{
	if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + b_w, _button_y + b_h )) {
		b_hovered = true
		if (mouse_check_button_pressed(mb_left)) {
			room_goto(Room1)
		}
	}
	else{
		b_hovered = false
	}
	
}


//REPLAY Button
if room == rm_end{
	if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + b_w, _button_y + b_h )) {
		r_hovered = true
		if (mouse_check_button_pressed(mb_left)) {
			obj_player.hp = 20
			obj_player.hasAccess = false
			obj_player.hasControl = false
			
			room_goto(rm_start)
		}
	}
	else{
		r_hovered = false
	}
	
}