/// @description Insert description here
// You can write your code in this editor

// Button Displaying
draw_self()

// Hover detection 
if hover_sound{
	draw_sprite_ext(spr_button_hover, 0, all_x, snd_y, 0.5, 0.5, 0, c_white, 1)
}
else{
	draw_sprite_ext(spr_button, 0, all_x, snd_y, 0.5, 0.5, 0, c_white, 1)
}
	

if hover_resume{
	draw_sprite_ext(spr_button_hover, 0, all_x, resume_y, 0.5, 0.5, 0, c_white, 1)
}
else{
	draw_sprite_ext(spr_button, 0, all_x, resume_y, 0.5, 0.5, 0, c_white, 1)
}

if hover_home{
	draw_sprite_ext(spr_button_hover, 0, all_x, home_y, 0.5, 0.5, 0, c_white, 1)
}
else{
	draw_sprite_ext(spr_button, 0, all_x, home_y, 0.5, 0.5, 0, c_white, 1)
}

//SOUND

if sound_on{
	draw_text(all_x + 8, snd_y + 5, "SOUND OFF")
}
else{
	draw_text(all_x + 8, snd_y + 5, "SOUND ON")
}
draw_text(all_x + 25, home_y + 5, "HOME")
draw_text(all_x +15, resume_y + 5, "RESUME")


