/// @description Insert description here
// You can write your code in this editor

var c_x = obj_camera.x + camera_get_view_width(view_camera[0])/2
var c_y = obj_camera.y + camera_get_view_height(view_camera[0])/2


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
			
		else if (j == 2 and current_trigger == 2){
			draw_sprite(spr_dialogue, 0, c_x - 15, c_y + 95)
			if obj_player.hasAccess{
				draw_text(c_x -200, c_y +80,dialogue2[0])
			}
			else{
				draw_text(c_x -200, c_y +80,dialogue1[0])
				access = true
			}
			
		
		}
	}

}



