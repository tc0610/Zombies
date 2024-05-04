/// @description Insert description here
// You can write your code in this editor
event_inherited()
hp = 1
destroy =  0

hspd = 0
vspd = 0
moveSpd = 10
direction = point_direction(x,y,obj_player.x,obj_player.y)
_dist = point_distance(0,0,obj_player.x,obj_player.y)
_dist = clamp(_dist,0,1)
_spd = moveSpd * _dist