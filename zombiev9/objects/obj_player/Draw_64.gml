/// @description Insert description here
// You can write your code in this editor

if room != rm_end or room != rm_start{
	draw_text_transformed(10,950,"HP",2,2,image_angle)
	draw_healthbar(80,950,500,1000,hp/maxhp*100,c_black,c_red,c_green,0,true,false )
}