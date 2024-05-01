/// @description Insert description here
// You can write your code in this editor

var c_x = obj_camera.x + camera_get_view_width(view_camera[0])/2
var c_y = obj_camera.y + camera_get_view_height(view_camera[0])/2
var p_x = obj_player.x
var p_y = obj_player.y

// terminals 
if responseOn{	
	for (var j = 0; j < totalNum; j++){
		if (j == 0 and current_trigger == 0){
			draw_sprite(spr_ter000, 0, c_x, c_y)
			break;
		}
		else if (j == 1 and current_trigger == 1){
			draw_sprite(spr_ter001, 0, c_x, c_y)
			break;

		}
		else if (j == 4 and current_trigger == 4){
			activate_main = true
		}
			
		else if (j == current_trigger){
			draw_sprite(spr_dialogue, 0, obj_player.x, obj_player.y+100)
			draw_text(p_x -200, p_y +80,dialogue1[j])
			draw_text(p_x-200,p_y+95,dialogue2[j])
			break;
		}
	}

}



