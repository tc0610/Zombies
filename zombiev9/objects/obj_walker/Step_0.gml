 /// @description Insert description here
// You can write your code in this editor



if (!GAME_PAUSED){
	// Inherit the parent event
	event_inherited();
	
	//state machine
	if state == wstates.sleep{
		sprite_index = spr_enemy_dorm
		mspd = 0
	}else if state == wstates.walk{
		sprite_index = spr_enemyWalk
		mspd = chaseSpd
	}else if state == wstates.attack{
		sprite_index = spr_enemyAtk
		if !audio_is_playing(slashsnd){
			audio_play_sound(slashsnd, 10, false);
		}
	}
	
	

	//Path
	chaseTimer--
	if chaseTimer <= 0{
		if point_distance(x,y,follow_tgt.x,follow_tgt.y) > 5 {
			path_x = follow_tgt.x
			path_y = follow_tgt.y
	
		}else{
			path_x = x
			path_y = y
		}
		chaseTimer = chaseTimerMax
	}

	if direction > 90 and direction < 270{
		face = 1	
	}else{
		face = -1	
	}

	if mp_grid_path(PATH_GRID,my_path,x,y,path_x,path_y,1 ){
		path_start(my_path,mspd,path_action_stop,false)	
	}

	//alert
	if place_meeting(x,y,obj_damageEnemy){
		hurt = 20
	}
	
	if collision_circle(x,y-16,70,obj_player,false,false) and !state == wstates.sleep{
		state = wstates.attack
	}else if alertStatus{
		state = wstates.walk
	}
	
	if collision_circle(x,y,alertRadius,obj_player,false,false) and alert > 0{
		if !obj_player.sneak and obj_player.moving{
			alert-= 10
		}else if obj_player.moving{
			alert -= 1	
		}
		else if alert < 100 and !obj_player.moving{
			alert++	
		}else if obj_player.attacking{
			alert-= 50	
		}
	}else if alert < maxAlert{
		alert++
	}

	_enemylist = ds_list_create() 
	collision_circle_list(x,y,alertRadius,obj_enemy,false,false,_enemylist,false)

	for(var i = 0; i < ds_list_size(_enemylist);i++){
		if ds_list_find_value(_enemylist,i).alertStatus{
			alertStatus = true	
		}
	}
	ds_list_destroy(_enemylist)
	
	if hp < maxhp{
		alertStatus = true	
	}

	if alert <= 0 or alertStatus{
		alertStatus = true
		if rattle == 0 and hp > 0{
			audio_play_sound(snd_rattle, 10, false);
			rattle = 1
		}
	}

	if !breathing{
		alertRadius--
		if alertRadius <= minRad{
			breathing = true	
		}
	}else{
		alertRadius++
		if alertRadius >= maxRad{
			breathing = false	
		}
	}
}

if (GAME_PAUSED) {
    path_end()
}