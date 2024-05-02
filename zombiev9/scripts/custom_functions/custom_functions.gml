//Draw weapon
function draw_weapon(){
	var _xOffset = lengthdir_x(weaponOffset, aimDir)
	var _yOffset = lengthdir_y(weaponOffset, aimDir)

	var _wpnYscl = 1
	if aimDir > 90 and aimDir < 270{
		_wpnYscl = -1
	}

	draw_sprite_ext(weapon.sprite,0,x+_xOffset,centerY+_yOffset,1,_wpnYscl,aimDir,c_white,1)
}

//Calc damage
function get_damaged_create(_hp = 10,_iframes = false){
	hp = _hp
	if _iframes{
		iframeTimer = 0
		iframeNumber = 90
	}else{
		damageList = ds_list_create()
	}
}

function get_damaged_cleanup(){
	ds_list_destroy(damageList)
}

function get_damaged(_damageObj,_iframes = false){
	if _iframes and iframeTimer > 0{
		iframeTimer--
		
		if iframeTimer mod 4 == 0{
			if image_alpha = 1{
				image_alpha = 0	
			}else{
				image_alpha = 1
			}
		}
		
		exit
	}
	
	if _iframes{
		image_alpha = 1	
	}
	
	
	//Take Damage
	if place_meeting(x,y,_damageObj){	
		//List of damage
		var _instList = ds_list_create();
		instance_place_list(x,y,_damageObj,_instList,false)
	
		//Size
		var _listSize = ds_list_size(_instList)
	
		//Loop through
		var _hitConfirm = false
		
		for(var i = 0;i < _listSize;i++){
			//Retrieve dmg
			var _inst = ds_list_find_value(_instList, i)
		
			if(_iframes or ds_list_find_index(damageList,_inst) == -1){
				if !_iframes{
					ds_list_add(damageList, _inst)
				}
				
				hp -= _inst.damage

				_hitConfirm = true
				
				_inst.hitConfirm = true
		
			}
		}
		
		if _iframes and _hitConfirm{
			iframeTimer = iframeNumber	
		}
	
		ds_list_destroy(_instList)
	}
	
	if !_iframes{
		var _damageListSize = ds_list_size(damageList)
		for(var i = 0;i < _damageListSize;i++){
			var _inst = ds_list_find_value(damageList,i)
	
			if(!instance_exists(_inst) || !place_meeting(x,y,_inst)){
				ds_list_delete(damageList,i)
				i--
				_damageListSize--
			}
		}
	}
}
