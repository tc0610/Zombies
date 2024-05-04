/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hurt > 0){ 
	gpu_set_fog(true, c_white, 0, 1000)
	draw_sprite_ext(sprite_index,image_index,x,y, face, image_yscale,image_angle, image_blend,image_alpha)
	gpu_set_fog(false, c_white,0,1000)
	hurt--
}else{
	draw_sprite_ext(sprite_index,image_index,x,y, face, image_yscale,image_angle, image_blend,image_alpha)
}