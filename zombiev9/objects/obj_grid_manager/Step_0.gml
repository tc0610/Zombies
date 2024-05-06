/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < 5; i++){
	if global.RM_ENTERED[i] == 1{
		obj_player.x = global.rm_arr[i][0]
		obj_player.y = global.rm_arr[i][1]
		global.RM_ENTERED[i] = 0
	}
	
}


