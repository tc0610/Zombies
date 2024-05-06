/// @description Insert description here
// You can write your code in this editor
if room == rm_end{
	draw_text_transformed(50,50,"You escape the facility into the barren outside." ,3,3,image_angle)
	
	draw_text_transformed(50,120,"An intense hunger ravages the back of your mind." ,3,3,image_angle)	
}

if room == rm_start{
	if b_hovered{
		draw_sprite_ext(spr_button_hover, 0, _button_x, _button_y, 2, 2, 0, c_white, 1)
	}
	else{
		draw_sprite_ext(spr_button, 0, _button_x, _button_y, 2, 2, 0, c_white, 1)
	}
	draw_text_transformed(_button_x + 40, _button_y + 20, "Start Game", 3, 3, 0)
}

if room == rm_end{
	if b_hovered{
		draw_sprite_ext(spr_button_hover, 0, _button_x, _button_y, 2, 2, 0, c_white, 1)
	}
	else{
		draw_sprite_ext(spr_button, 0, _button_x, _button_y, 2, 2, 0, c_white, 1)
	}
	draw_text_transformed(_button_x + 60, _button_y + 20, "Replay", 3, 3, 0)
}