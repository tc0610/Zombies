/// @description Insert description here
// You can write your code in this editor
if !GAME_PAUSED{
	x+= hspd
	y+= vspd
	get_damaged(obj_damageEnemy)
	
	//Death
	if collision_line(x,y,x+hspd,y+vspd,obj_solidwall,false,false){
		destroy = true
	}
	

	hspd = lengthdir_x(_spd,direction)
	vspd = lengthdir_y(_spd,direction)
	
	if destroy{
		instance_destroy()	
	}
	
	
	
}