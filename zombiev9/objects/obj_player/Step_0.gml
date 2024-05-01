/// @description Insert description here
// You can write your code in this editor

if (!GAME_PAUSED){
	//Input
	#region
	leftkey = keyboard_check(ord("A"))
	rightKey = keyboard_check(ord("D"))
	upKey = keyboard_check(ord("W"))
	downKey = keyboard_check(ord("S"))
	shootKey = mouse_check_button_pressed(mb_left)
	chargeKey = mouse_check_button(mb_left)
	swapKeyPressed = keyboard_check_pressed(ord("E"))
	sneakKey = keyboard_check_pressed(ord("Q"))
	confirmKey = keyboard_check(ord("F"))
	#endregion

	//Movement
	#region
		//Direction
		var hKey = rightKey - leftkey
		var vKey = downKey - upKey
		moveDir = point_direction(0,0,hKey, vKey)

		//x and y speeds
		var _spd = 0
		var _dist = point_distance(0,0,hKey,vKey)
		_dist = clamp(_dist,0,1)
		_spd = moveSpd * _dist

		hspd = lengthdir_x(_spd,moveDir)
		vspd = lengthdir_y(_spd,moveDir)

		//Collision
		if place_meeting(x+hspd,y,obj_wall){
			hspd = 0
		}
		if place_meeting(x,y+vspd,obj_wall){
			vspd = 0
		}
	
		if hspd != 0 or vspd != 0{
			moving = true	
		}else{
			moving = false
		}
		//Sneak
		if sneakKey{
			if sneak{
				sneak = 0
			}else{
				sneak = 1
			}
		}
	
		if sneak{
			moveSpd = sneakSpd	
		}else{
			moveSpd = walkSpd
		}
	
		depth = -bbox_bottom
	#endregion

	//Damaged
	get_damaged(obj_damagePlayer,true)
	if hp <=0{
		room_restart()
		hp = maxhp
		x = startx
		y = starty
	}

	//Aiming
	#region

	centerY = y + centerYOffset
	aimDir = point_direction(x,centerY,mouse_x,mouse_y)

	#endregion

	//Spriting
	#region
	face = round(aimDir/90)
	if face == 4{
		face = 0
	}

	if sneak{
		sprite_index = sprite[face]
	}
	else{
		sprite_index = sprite[face + 4]
	}
	//Move
	if keyboard_check(ord("W"))
	or keyboard_check(ord("A"))
	or keyboard_check(ord("S"))
	or keyboard_check(ord("D")){        
		MoveCollide()
	}
	else{
		switch (sprite_index) {
		    case spr_wL_knife:
				sprite_index = spr_iL_knife
				break;
			case spr_wR_knife:
		        sprite_index = spr_iR_knife
		        break;
			case spr_wD_knife:
		        sprite_index = spr_iF_knife
		        break;
			case spr_wU_knife:
		        sprite_index = spr_iB_knife
		        break;	
			case spr_sneakWRK:
				sprite_index = spr_idleSR
		        break;	
			case spr_sneakWUK:
				sprite_index = spr_idleSB
		        break;	
			case spr_sneakWLK:
				sprite_index = spr_idleSL
		        break;	
			case spr_sneakWDK:
				sprite_index = spr_idleSF
		        break;					
			
		}
	}
	
	
	#endregion

	//Weapon Swap
	#region
		if selectedWeapon = 0{
			weaponOffset = pistolOffset	
		}else{
			weaponOffset = knifeOffset
		}
		var _playerWeapons = global.PlayerWeapons
	
		//Swap
		if swapKeyPressed{
			selectedWeapon++;
		
			if(selectedWeapon >= array_length(_playerWeapons)){
				selectedWeapon = 0
			}
		
			weapon = _playerWeapons[selectedWeapon]
		
		}
	#endregion

	//Shooting
	#region
		if shootTimer > 0{
			shootTimer--	
		}
	
		var _spread = weapon.spread
		var _spreadDiv = _spread / max(weapon.bulletNum-1,1)
	
		if selectedWeapon == 0{
			if shootKey and shootTimer <= 0{
				attacking = true
				shootTimer = weapon.cooldown
			
				//create
				var _xoffset = lengthdir_x(weapon.length + weaponOffset,aimDir)
				var _yoffset = lengthdir_y(weapon.length + weaponOffset,aimDir)
		
				for(var i=0;i<weapon.bulletNum;i++){
					var _bullet = instance_create_depth(x + _xoffset,centerY + _yoffset,depth -100,weapon.bulletObj)
			
					with(_bullet){
						dir = other.aimDir - _spread/2 + _spreadDiv*i
				
						if dirFix{
							image_angle = dir
						}
					}
				}
			}	
		}else if selectedWeapon == 1{
			if chargeKey and shootTimer <= 0{
				charge++
			}else if mouse_check_button_released(mb_left) and shootTimer <= 0{
				attacking = true
			
				shootTimer = weapon.cooldown
				//create
				var _xoffset = lengthdir_x(weapon.length + weaponOffset,aimDir)
				var _yoffset = lengthdir_y(weapon.length + weaponOffset,aimDir)
			
				for(var i=0;i<weapon.bulletNum;i++){
					var _bullet = instance_create_depth(x + _xoffset,centerY + _yoffset,depth -100,weapon.bulletObj)
			
					with(_bullet){
						dir = other.aimDir - _spread/2 + _spreadDiv*i
				
						if dirFix{
							image_angle = dir
						}
						if obj_player.charge >= obj_player.maxCharge{
							damage = 10	
						}
					}
				}
			
				charge = 0
			}
		}
	
		attacking = false
	#endregion


	//Interact
	#region
	if instance_exists(obj_interact){
		for (var i = 0; i< obj_interact.totalNum; i++){
		    if ((collision_circle(x, y-30, 25, obj_interact.interactables[i], false, true)) && confirmKey) {
				obj_interact.current_trigger = i
				obj_interact.responseOn = true
				GAME_PAUSED = true
		        break;
		    }
		}
	}
	#endregion
	
}