/// @description Insert description here
// You can write your code in this editor
event_inherited()
x += hspd
y += vspd

if direction > 90 and direction < 270{
	face = 0	
}else{
	face = 1	
}

if place_meeting(x,y,obj_damageEnemy){
	hurt = 20
}

if state == states.idle{
	idletimer--
	sprite_index = idle[face]
	var newstate = random_range(0,2)
	if idletimer <= 0{
		idletimer = idletimermax
		if newstate <= 1{
				state = states.charge	
		}else{
				state = states.shooting	
		}
	}
}

if state == states.charge{
	acceltimer--
	sprite_index = roll[face]
	if moveSpd < maxSpd and acceltimer <= 0{
		moveSpd+= accel	
		acceltimer = acceltimerMax
	}
	if !lockin{
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		lockin = true
	}
	var _spd = 0
	var _dist = point_distance(0,0,obj_player.x,obj_player.y)
	_dist = clamp(_dist,0,1)
	_spd = moveSpd * _dist

	hspd = lengthdir_x(_spd,direction)
	vspd = lengthdir_y(_spd,direction)
	
	if place_meeting(x+hspd,y+vspd,obj_solidwall) or place_meeting(x+hspd,y+vspd,obj_door){
		hspd = 0
		vspd = 0
		moveSpd = 0
		state = states.stunned
		lockin = false
	}
	
}

if state == states.stunned{
	stuntimer--
	if stuntimer <= 0{
		stuntimer = stuntimermax
		state = states.idle
	}
}

if state == states.shooting{
	instance_create_depth(x,y,0,obj_splinters)
	state = states.idle
}