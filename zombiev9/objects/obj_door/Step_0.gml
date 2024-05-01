/// @description Insert description here
// You can write your code in this editor

//if touched_player{
//	sprite_set_speed(sprite_index,6,spritespeed_framespersecond)
//	touched_player = false
//	room_goto(rm_hallway)
//}

depth = -bbox_bottom
sprite_set_speed(sprite_index,0,spritespeed_framespersecond)

if collision_circle(x,y,25,obj_player,false,true){
	if((needAccess and obj_player.hasAccess) or (needControl and obj_player.hasControl) or (!needAccess and !needControl)){
		sprite_set_speed(sprite_index,6,spritespeed_framespersecond)
		if (image_index >= sprite_get_number(sprite_index) - 1) {
			// stop animation after 1 run
			sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
		}
			room_goto(targetrm)
			obj_player.x = targetx
			obj_player.y = targety
			obj_player.startx = targetx
			obj_player.starty = targety
	}
	
}

if opened{
	instance_deactivate_object(obj_wall)	
}
else{
	instance_activate_object(obj_wall)	
}
