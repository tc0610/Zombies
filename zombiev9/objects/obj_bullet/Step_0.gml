//Move
#region
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)

x += xspd
y += yspd


#endregion

//Collision
#region

//Hit confirm
if hitConfirm and enemyDestroy{
	destroy = true	
}

//Destroy
if destroy{
	instance_destroy()	
}

//Collision
if collision_line(x,y,x+xspd,y+yspd,obj_solidwall,false,false){
	destroy = true
}

//Range
if point_distance(xstart,ystart,x,y) > max_dist{
	destroy = true	
}
#endregion