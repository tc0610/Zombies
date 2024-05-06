//if aimDir >= 0 and aimDir < 180{
//	draw_weapon()
//}

//Player
draw_self()

//Weapon
//if aimDir >= 180 and aimDir < 360{
//	draw_weapon()
//}

//HP

if instance_exists(obj_interact){
//draw_text(x,y+ 40,string(obj_interact.current_trigger))
}

//Alert box
if instance_exists(obj_interact){
	for (var i = 0; i< obj_interact.totalNum; i++){
	    if (collision_circle(x, y-30, 25, obj_interact.interactables[i], false, false)) {
	       //draw_text(x,y+ 50,string(i))
		   draw_sprite(spr_interact, 0, x, y-64)
	    }
	}
}

if (collision_circle(x, y-30, 25, obj_door, false, false)) {
	 draw_sprite(spr_interact, 0, x, y-64)
}