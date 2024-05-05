
if(hurt > 0){ 
	gpu_set_fog(true, c_white, 0, 1000)
	draw_sprite_ext(sprite_index,image_index,x,y, face, image_yscale,image_angle, image_blend,image_alpha)
	gpu_set_fog(false, c_white,0,1000)
	hurt--
}else{
	draw_sprite_ext(sprite_index,image_index,x,y, face, image_yscale,image_angle, image_blend,image_alpha)
}
if !alertStatus and alert >= maxAlert{
	draw_circle(x,y,alertRadius,true)
}else if !alertStatus and alert < maxAlert{
	draw_circle_colour(x, y, alertRadius, c_black, c_red, true)
}