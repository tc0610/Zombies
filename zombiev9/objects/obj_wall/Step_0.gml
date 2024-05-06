/// @description Insert description here
// You can write your code in this editor

var escapeKey = keyboard_check(ord("C"))

if collision_circle(x,y,50,obj_player,false,true) and obj_player.confirmKey{
	if !obj_player.hasAccess{
		show_text = true 
	}

}



if escapeKey{
	show_text = false
}

