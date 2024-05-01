// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chooseSpr(last_spr){
	var sp = noone
	switch(last_spr){
		case spr_wR_gun:
		case spr_iR_gun:
				sp = spr_shoot_r
				break;
				
		case spr_wL_gun:
		case spr_iL_gun:
				sp = spr_shoot_l
				break;
		case spr_wD_gun:
		case spr_iF_gun:
				sp = spr_shoot_f
				break;
				
		case spr_wU_gun:
		case spr_iB_gun:
				sp = spr_shoot_b
				break;
				
		case spr_wR_knife:
		case spr_iR_knife:
				sp = spr_slashR
				break;
				
		case spr_sneakWLK:
		case spr_iL_knife:
				sp = spr_slashL
				break;
		case spr_wD_knife:
		case spr_iF_knife:
				sp = spr_slashF
				break;
				
		case spr_wU_knife:
		case spr_iB_knife:
				sp = spr_slashB
				break;	
		
	}
	
	return sp;
}