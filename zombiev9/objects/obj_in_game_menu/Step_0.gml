/// @description Insert description here
// You can write your code in this editor



x = obj_camera.x + camera_get_view_width(view_camera[0])/2
y = obj_camera.y + camera_get_view_height(view_camera[0])/2

all_x = x - 45
snd_y = y - 50
resume_y = y 
home_y = y + 50


// Sound button
if (point_in_rectangle(mouse_x, mouse_y, all_x, snd_y, all_x + button_width, snd_y + button_height)) {
	hover_sound = true
	if (mouse_check_button_pressed(mb_left)) {
		sound_on = !sound_on
	}	
}
	
else{
	hover_sound = false	
}

if (!sound_on){
	audio_pause_all()
}
else{
	audio_resume_all()
}

// Resume button 
if (point_in_rectangle(mouse_x, mouse_y, all_x, resume_y, all_x + button_width, resume_y +button_height)) {
	hover_resume = true
	if (mouse_check_button_pressed(mb_left)){
		obj_setting.show_Menu = false
	}	
}
else{
	hover_resume = false	
}

// home button 
if (point_in_rectangle(mouse_x, mouse_y, all_x, home_y, all_x + button_width, home_y +button_height)) {
	hover_home = true
	if (mouse_check_button_pressed(mb_left)){
		obj_setting.show_Menu = false
		room_goto(rm_start)
	}	
}
else{
	hover_home = false	
}

