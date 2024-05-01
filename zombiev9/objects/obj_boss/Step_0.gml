/// @description Insert description here
// You can write your code in this editor
event_inherited()
x += hspd
y += vspd
if state == states.charge{
	acceltimer--
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
	var newstate = random_range(0,1)
	if stuntimer <= 0{
		stuntimer = stuntimermax
		if newstate <= 1{
			state = states.charge	
		}else{
			state = states.shooting	
		}
	}
}

if state == states.shooting{
	
	
	
}