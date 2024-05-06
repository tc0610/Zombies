

x = obj_camera.x + (camera_get_view_width(view_camera[0])/2) 
y = obj_camera.y + (camera_get_view_height(view_camera[0])/2) - 180





if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    isHovered = true
    if (mouse_check_button_pressed(mb_left)) {
        show_Menu = true
    }
} 
else {
    isHovered = false
}

if isHovered{
	sprite_index = spr_setting_hover	
}
else{
	sprite_index = spr_setting
}


if show_Menu{
	instance_activate_object(obj_in_game_menu)
	GAME_PAUSED = true
}
else{
	instance_deactivate_object(obj_in_game_menu)
	GAME_PAUSED = false
}


